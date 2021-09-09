using Dash, DashCoreComponents, DashHtmlComponents, DashTable
using PlotlyBase


x = rand(1000)
y = [xi + 0.5rand() for xi ∈ x]



# implement least-squares via normal equations
X = hcat(x, ones(length(x)))
ps = (X'*X)\(X'*y)
fit(x) = ps[1]*x + ps[2]

# set up graph with two traces
t1 = scatter(;x=x, y=y, mode="markers", name="data")
t2 = scatter(;x=[0.0,1.0], y=fit.([0.0, 1.0]), mode="lines", name="fit")
layout = Layout(title="Linear Least Squares",
                xaxis_title="x",
                yaxis_title="y")

fig = Plot([t1, t2], layout)

app = dash()
app.layout = html_div() do
    html_h1("Demo Dash App Using Julia in a Container!"),
    html_div("A pretty graph"),
    dcc_graph(
        id = "Linear-Least Squares",
        figure = fig
    )
end


run_server(app, "0.0.0.0", 8000)
