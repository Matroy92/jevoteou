import { Application } from "stimulus"
import { definitionsFromContext } from "stimulus/webpack-helpers"

const application = Application.start()
const context = require.context("controller", true, /_controller\.js$/)
application.load(definitionsFromContext(context))