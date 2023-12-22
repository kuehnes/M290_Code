<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" charset="utf-8">
    <title>Mockup</title>
    <link rel="stylesheet" href="css/style.css">
    <style>
        /* Füge hier deine CSS-Stile ein */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column; /* Inhalte in Spaltenrichtung anordnen */
            background-color: #f0f0f0;
            padding-left: 20px; /* Abstand für den Inhalt links */
        }

        .header {
            background-color: #f0f0f0;
            padding: 20px;
            text-align: left; /* Titel links ausrichten */
        }

        .semester {
            margin-top: 20px; /* Oben Abstand zum Header */
            padding: 10px;
            border: 1px solid #ccc;
            background-color: #f9f9f9;
            width: 300px; /* Breite des Semesterblocks */
        }

        .module {
            margin-bottom: 10px;
            padding-bottom: 10px;
            border-bottom: solid thin #ccc;
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        .grade-green,
        .grade-red {
            width: 20px;
            height: 20px;
            border-radius: 50%;
        }

        .grade-green {
            background-color: green;
        }

        .grade-yellow {
            background-color: yellow;
        }

        .grade-red {
            background-color: red;
        }

        button {
            width: 100%; /* Button auf volle Breite */
            padding: 10px;
            border: none;
            border-radius: 3px;
            background-color: #007bff;
            color: #fff;
            cursor: pointer;
        }

        button:hover {
            background-color: #0056b3;
        }

        .semesters-container {
            display: flex; /* Semesterncontainer nebeneinander anzeigen */
            justify-content: space-between; /* Abstand zwischen den Semestern */
        }
    </style>
</head>
<body>
<div class="header">
    <h1>Ausbildung Mediamatik EFZ</h1>
    <p>Vorname Nachname</p>
</div>

<div class="semesters-container">
    <!-- Erstes Semester -->
    <div class="semester">
        <h2>Semester 1.1 Herbst</h2>
        <div class="module">
            <label for="grade11">Modul 264</label>
            <input type="number" id="grade11" step="0.1" min="1" max="6">
        </div>
        <div class="module">
            <label for="grade12">Modul 265</label>
            <input type="number" id="grade12" step="0.1" min="1" max="6">
        </div>
        <div class="module">
            <label for="grade13">Modul 266</label>
            <input type="number" id="grade13" step="0.1" min="1" max="6">
        </div>
        <div class="module">
            <label for="grade14">Modul 267</label>
            <input type="number" id="grade14" step="0.1" min="1" max="6">
        </div>
        <div class="module">
            <label for="grade14">Modul 267</label>
            <input type="number" id="grade14" step="0.1" min="1" max="6">
        </div>
    </div>
    <div class="space-between"></div>
    <!-- Zweites Semester -->
    <div class="semester">
        <h2>Semester 1.2 Frühling</h2>
        <div class="module">
            <label for="grade21">Modul 268</label>
            <input type="number" id="grade21" step="0.1" min="1" max="6">
        </div>
        <div class="module">
            <label for="grade22">Modul 269</label>
            <input type="number" id="grade22" step="0.1" min="1" max="6">
        </div>
        <div class="module">
            <label for="grade23">Modul 270</label>
            <input type="number" id="grade23" step="0.1" min="1" max="6">
        </div>
        <div class="module">
            <label for="grade24">Modul 271</label>
            <input type="number" id="grade24" step="0.1" min="1" max="6">
        </div>
        <div class="module">
        <label for="grade14">Modul 267</label>
        <input type="number" id="grade14" step="0.1" min="1" max="6">
    </div>
    </div>
</div>

<!-- Drittes Semester -->
<div class="semesters-container">
    <!-- Erstes Semester -->
    <div class="semester">
        <h2>Semester 2.1 Herbst</h2>
        <div class="module">
            <label for="grade11">Modul 264</label>
            <input type="number" id="grade11" step="0.1" min="1" max="6">
        </div>
        <div class="module">
            <label for="grade12">Modul 265</label>
            <input type="number" id="grade12" step="0.1" min="1" max="6">
        </div>
        <div class="module">
            <label for="grade13">Modul 266</label>
            <input type="number" id="grade13" step="0.1" min="1" max="6">
        </div>
        <div class="module">
            <label for="grade14">Modul 267</label>
            <input type="number" id="grade14" step="0.1" min="1" max="6">
        </div>
        <div class="module">
            <label for="grade14">Modul 267</label>
            <input type="number" id="grade14" step="0.1" min="1" max="6">
        </div>
    </div>
    <div class="space-between"></div>
    <!-- Zweites Semester -->
    <div class="semester">
        <h2>Semester 2.2 Frühling</h2>
        <div class="module">
            <label for="grade21">Modul 268</label>
            <input type="number" id="grade21" step="0.1" min="1" max="6">
        </div>
        <div class="module">
            <label for="grade22">Modul 269</label>
            <input type="number" id="grade22" step="0.1" min="1" max="6">
        </div>
        <div class="module">
            <label for="grade23">Modul 270</label>
            <input type="number" id="grade23" step="0.1" min="1" max="6">
        </div>
        <div class="module">
            <label for="grade24">Modul 271</label>
            <input type="number" id="grade24" step="0.1" min="1" max="6">
        </div>
        <div class="module">
            <label for="grade14">Modul 267</label>
            <input type="number" id="grade14" step="0.1" min="1" max="6">
        </div>
    </div>
</div>

<div class="semesters-container">
    <!-- Erstes Semester -->
    <div class="semester">
        <h2>Semester 3.1 Herbst</h2>
        <div class="module">
            <label for="grade11">Modul 264</label>
            <input type="number" id="grade11" step="0.1" min="1" max="6">
        </div>
        <div class="module">
            <label for="grade12">Modul 265</label>
            <input type="number" id="grade12" step="0.1" min="1" max="6">
        </div>
        <div class="module">
            <label for="grade13">Modul 266</label>
            <input type="number" id="grade13" step="0.1" min="1" max="6">
        </div>
        <div class="module">
            <label for="grade14">Modul 267</label>
            <input type="number" id="grade14" step="0.1" min="1" max="6">
        </div>
        <div class="module">
            <label for="grade14">Modul 267</label>
            <input type="number" id="grade14" step="0.1" min="1" max="6">
        </div>
    </div>
    <div class="space-between"></div>
    <!-- Zweites Semester -->
    <div class="semester">
        <h2>Semester 3.2 Frühling</h2>
        <div class="module">
            <label for="grade21">Modul 268</label>
            <input type="number" id="grade21" step="0.1" min="1" max="6">
        </div>
        <div class="module">
            <label for="grade22">Modul 269</label>
            <input type="number" id="grade22" step="0.1" min="1" max="6">
        </div>
        <div class="module">
            <label for="grade23">Modul 270</label>
            <input type="number" id="grade23" step="0.1" min="1" max="6">
        </div>
        <div class="module">
            <label for="grade24">Modul 271</label>
            <input type="number" id="grade24" step="0.1" min="1" max="6">
        </div>
        <div class="module">
            <label for="grade14">Modul 267</label>
            <input type="number" id="grade14" step="0.1" min="1" max="6">
        </div>
    </div>
</div>

<div class="semesters-container">
    <!-- Erstes Semester -->
    <div class="semester">
        <h2>Semester 4.1 Herbst</h2>
        <div class="module">
            <label for="grade11">Modul 264</label>
            <input type="number" id="grade11" step="0.1" min="1" max="6">
        </div>
        <div class="module">
            <label for="grade12">Modul 265</label>
            <input type="number" id="grade12" step="0.1" min="1" max="6">
        </div>
        <div class="module">
            <label for="grade13">Modul 266</label>
            <input type="number" id="grade13" step="0.1" min="1" max="6">
        </div>
        <div class="module">
            <label for="grade14">Modul 267</label>
            <input type="number" id="grade14" step="0.1" min="1" max="6">
        </div>
        <div class="module">
            <label for="grade14">Modul 267</label>
            <input type="number" id="grade14" step="0.1" min="1" max="6">
        </div>
    </div>
    <div class="space-between"></div>
    <!-- Zweites Semester -->
    <div class="semester">
        <h2>Semester 4.2 Frühling</h2>
        <div class="module">
            <label for="grade21">Modul 268</label>
            <input type="number" id="grade21" step="0.1" min="1" max="6">
        </div>
        <div class="module">
            <label for="grade22">Modul 269</label>
            <input type="number" id="grade22" step="0.1" min="1" max="6">
        </div>
        <div class="module">
            <label for="grade23">Modul 270</label>
            <input type="number" id="grade23" step="0.1" min="1" max="6">
        </div>
        <div class="module">
            <label for="grade24">Modul 271</label>
            <input type="number" id="grade24" step="0.1" min="1" max="6">
        </div>
        <div class="module">
            <label for="grade14">Modul 267</label>
            <input type="number" id="grade14" step="0.1" min="1" max="6">
        </div>
    </div>
</div>

<div class="score">
    <h2>Gesamtscore</h2>
    <button onclick="calculateScore('semester1')">Berechne Gesamtscore</button>
    <p id="totalScore">---</p>
    <!-- Weitere Module hier einfügen -->

</div>

<script>
    // Funktion zum Berechnen des Gesamtscores für das jeweilige Semester
    function calculateScore(semester) {
        let totalScore = 0;
        const modules = document.querySelectorAll(`.${semester} input[type='number']`);

        modules.forEach(module => {
            totalScore += parseFloat(module.value) || 0;
        });

        totalScore /= modules.length || 1; // Durchschnitt berechnen, 1 verhindert Division durch 0
        document.getElementById('totalScore').textContent = totalScore.toFixed(1);
    }
</script>
</body>
</html>
