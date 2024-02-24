from dash import Dash, html, dcc, callback, Output, Input
import plotly.express as px
import pandas as pd

# o: read csv file
df = pd.read_csv(
    "https://raw.githubusercontent.com/plotly/datasets/master/gapminder_unfiltered.csv"
)

# fmt: off
a = 1
b= 2
c =3
# fmt: on

# init app
app = Dash(__name__)

# o: define app layout
app.layout = html.Div(
    [
        html.H1(children="Title of Dash App", style={"textAlign": "center"}),
        dcc.Dropdown(df.country.unique(), "Canada", id="dropdown-selection"),
        dcc.Graph(id="graph-content"),
    ]
)

# o: define callback func
@callback(
    Output("graph-content", "figure"),
    Input("dropdown-selection", "value")
)
def update_graph(value):
    dff = df[df.country == value]
    return px.line(dff, x="year", y="pop")


def add(a, b):
    sum = a + b
    return sum

class Dog:
    def __init__(self, name, age):  
        self.name = name
        self.age = age

    def bark(self):
        print("bark bark!")

    def doginfo(self):
        print(self.name + " is " + str(self.age) + " year(s) old.")

    def birthday(self):
        self.age +=1

    def setBuddy(self, buddy):
        self.buddy = buddy
        buddy.buddy = self


# o: run app
if __name__ == "__main__":
    app.run(debug=True)
