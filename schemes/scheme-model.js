const db = require("../db-config");

module.exports = {
  find,
  findById,
  findSteps,
  add,
  //   remove,
};

function find() {
  return db("schemes");
}

function findById(id) {
  return db("schemes").where({ id });
}

function findSteps(id) {
  return db("steps").where({ id });
}

function add(newScheme) {
  return db("schemes")
    .insert(newScheme, "id")
    .then(([id]) => {
      return findById(id);
    });
}
