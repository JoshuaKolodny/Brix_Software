
$(function () {

  var url = "https://randomuser.me/api/?results=3";
  var p = "";
  var randomize;

  fetchInformation(url);
  randomizer();

  function fetchInformation(url) {
    fetch(url)
      .then(response => response.json())
      .then(function (data) {
        data.results.forEach(person => {

          p += `
          <div class="col-12 mx-auto person col-md-8 col-lg-4 col-sm-6 my-4">
            <div class="card">
              <img src=${person.picture.large} class="card-img-top" alt="" />
              <div class="card-body">

                <div class="person-info">

                  <p class="text-capitalize"><span class="mr-2 text-primary"><i class="fas fa-user"></i></span>name :<span
                   class="ml-1  badge bg-light text-dark single-info">${person.name.first}</span></p>

                  <p class="text-capitalize"><span class="mr-2 text-primary"><i class="fas fa-user"></i></span>last name
                    :<span class="ml-1  badge bg-light text-dark single-info">${person.name.last}</span></p>

                  <p class="text-capitalize"><span class="mr-2 text-primary"><i
                    class="fas fa-search-location"></i></span>location
                    :<span style="overflow-wrap: break-word;" class="ml-1  badge bg-light text-dark single-info">${person.location.city}, ${person.location.country}</span>
                  </p>

                  <p class="text-capitalize"><span class="mr-2 text-primary"><i class="fas fa-phone"></i></span>phone
                    :<span class="ml-1  badge bg-light text-dark single-info">${person.phone}</span></p>

                  <p><span class="mr-2 text-primary"><i class="fas fa-envelope"></i></span>Email
                    :<span style="overflow-wrap: break-word;" class="ml-1 badge bg-light text-dark single-info">${person.email}</span>
                  </p>
                </div>
              </div>
            </div>
          </div>
        </div>`;
        });
        $("#results").append(p);
        p="";
      });
  }
  function randomizer(){
    randomize = `<button id="randomize" class="btn btn-lg btn-primary">Randomize</button>`;

    $("#randomize").append(randomize);
  
    $('#randomize').on('click', function () {
      location.reload();
    });
  }
 

});

