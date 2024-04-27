describe('simple Nuxt app', () => {
  it('has correct text', () => {
    cy.visit('http://frontend:3001')
    cy.get('p').contains('Luke Skywalker')
    cy.get('p').contains('Leia Organa')
    cy.get('p').contains('Han Solo')
  })
})