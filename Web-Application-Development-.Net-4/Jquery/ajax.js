$(document).ready(function () {

    //Getting a file
    $('#btnGetFile').click(function () {
        $.get("Theory.txt", function (data, status, xhr) {

            $('#content').append('<p> Content: ' + data + ' status: ' + status + "  " + xhr.status + '</p>');
        })
    })

    //Getting a json
    $('#btnGetJson').click(function () {

        $.get("Data.json", function (data, status, xhr) {
            $('#contentJson').append('<p> Name: ' + data.Name + ' LastName: ' + data.LastName + '</p>')
        });
    });


    //Getting a json Array
    $('#btnGetJsonArray').click(function () {

        $.get('jsonArray.json', function (data, status, xhr) {
            //the div must be empty, without spaces between tag open and close
            if ($('#contentJsonArray').is(':empty')) {
                $.each(data, function (index, obj) {
                    $('#contentJsonArray').append('<p> Name: ' + obj.Name + ' Last Name: ' + obj.LastName + ' Age: ' + obj.Age + ' </p> <br/>');
                });
            }


        });

    });

    //Getting data from complex json
    $('#btnGetComplexJson').click(function () {

        $.getJSON('ComplexJson.json', function (data, status, xhr) {
            if ($('#contentComplexJson ul').is(':empty')) {
                $.each(data.employees, function (index, obj) {
                    $('#contentComplexJson ul').append('<li> ' + obj.Name + ' ' + obj.LastName + ' </li > ');
                });
            }
        });

    });

   //find the minor age
    $('#btnGetlessAge').click(function () {
        $.getJSON('ComplexJson.json', function (data, status, hrx) {

            var minNum = data.employees[0].Age;
            $.each(data.employees, function (index, obj) {
                if (obj.Age < minNum) 
                    minNum = obj.Age;
                
            });
            $('#contentGetLessAge').append('<p> ' + minNum + ' </p>');

        });

    });

    //Get Data With Ajax
    $('#btnGetDataWithAjax').click(function () {

        $.ajax({
            url: 'jsonArray.json',
            type: 'GET',
            dataType: 'json',
            success: function (data) {
                if ($('#contentGetDataWithAjax').is(':empty')) {

                    $('#contentGetDataWithAjax').append('<ul>');

                    $.each(data, function (index, obj) {
                        $('#contentGetDataWithAjax').append('<li> ' + obj.Name + ' ' + obj.LastName + ' </li>');

                    });

                    $('#contentGetDataWithAjax').append('</ul>');
                }
            },
            error: function (xhr, status, errormsg) {
                console.log(xhr);
                console.log(status);
                console.log(errormsg);
            }

        });

    });

    //Sending a request to a server with get
    $('#somebutton').click(function () {
        //url. server url
        // { name: "value" }. sent Data to server
        //function (data, textStatus, jqXHR).  responsOfServer is the data response from server
        $.get("/url", { name: "value" },
            function (responsOfServer, textStatus, jqXHR) {

            },
            "json"
        );

    });

    //sending a request to a server with post
    $(selector).click(function (e) {
        //it is important, to set prenvent default
        e.preventDefault();
        $.post("/url", { name: "value" },
            function (data, textStatus, jqXHR) {

            },
            "dataType"
        );
    });

    //working with callback
    $(selector).click(function (e) {
        e.preventDefault();
        $.post("/url", { name: "value" },
            function (data, textStatus, jqXHR) {

            },
            "dataType"
        ).done(function () {
            // operation was successful
            }).fail(function () {
                //operation fails

            }).always(function () {

                //always will be executed
            });
    });

});