import clips
import PySimpleGUI as sg


def multiple_choice_question(text: str, *options: str) -> str:
    layout = [[sg.Text(text)]]
    for option in options:
        layout.append([sg.Button(option)])
    window = sg.Window("starWars_static", layout)
    event, _ = window.read()
    window.close()
    return event if event else "None"


def display_planet_fact(env):
    for fact in env.facts():
        print(fact)
        if fact.template.name == "planet":
            planet_name = fact[0]
            sg.popup(f"You should visit: {planet_name}", title="Your destination")
            return True
        elif fact.template.name == "text":
            sg.popup(f"{' '.join(fact)}", title='Text for you')
            return True
    return False


def main():
    env = clips.Environment()
    env.define_function(multiple_choice_question, name='m')

    env.eval('(load "rules.clp")')
    env.run()

    if display_planet_fact(env):
        print("Program zakończony po wyświetleniu planety lub końcowej odpowiedzi.")
    else:
        print("Nie wykryto faktu 'planet'.")


if __name__ == '__main__':
    main()