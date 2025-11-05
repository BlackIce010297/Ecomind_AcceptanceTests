#User Story 21: Reportes de progreso familiares
#title hu21-family-progress-reports
Feature: Reportes de progreso familiares
  As a parent
  I want to receive visual reports of my family’s progress
  So that I can analyze how we are improving together

  Scenario: Generación automática de reportes familiares
    Given the parent completes challenges within the application
    And at least one challenge has been completed during the week
    When the weekly cycle ends
    Then the application generates a visual report of family progress
    And displays the number of challenges completed and goals achieved

  Scenario: Generación automática de reportes familiares no exitosa
    Given the parent has not completed any challenges during the week
    When the application attempts to generate the report
    Then the application shows the message "No hay datos suficientes para generar un reporte esta semana"
    And does not generate any data
