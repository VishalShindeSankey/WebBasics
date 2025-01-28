//  https://run.mocky.io/v3/9b184f9d-bf48-4467-9d8f-137ea0eba817 

const getData = ()=>{

    fetch("https://jsonplaceholder.typicode.com/users")
    .then((res)=> res.json())
    .then((data) => {
        console.log(data);

        if(data.length > 0){
            let table = document.getElementById("users");
        
            for(let i = 0 ; i < data.length ; i++){
                let row = document.createElement("tr");
                
                row.innerHTML = `<td> ${data[i].id} </td>
                <td> ${data[i].name} </td>
                <td> ${data[i].username} </td>
                <td> ${data[i].email} </td>
                `;
        
                table.appendChild(row);
            }
        }
    })
    .catch((err)=>console.log(err));
}

getData();


const person = {
    fname:"vishal",
    lname:"shinde",
    fullname:()=>{
        console.log(fname+lname);
    }
}


console.log(person);

