<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset='utf-8'">
    <meta http-equiv="Cache-control" content="public, max-age=3600, must-revalidate">

    <link rel="shortcut icon" href="https://vulneralibity-scan.darkdevops.com/assets/img/favicon.jpg" type="image/x-icon">
    <link rel="apple-touch-icon" href="https://vulneralibity-scan.darkdevops.com/assets/img/favicon.jpg">

    <link href='https://fonts.googleapis.com/css?family=Oswald:400,300' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600' rel='stylesheet' type='text/css'>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="author" content="László Béres">
    <meta name="description" content="Result of vulneralibity scan.">
    <meta name="keywords" content="Result of vulneralibity scan, vulneralibity, vulneralibity scan, docker, docker vulneralibity, podman, podman vulneralibity">
    <meta name="robots" content="index, follow">
    
    <!--  Dublin Core  -->
    <link rel="schema.DC" href="http://purl.org/dc/elements.1.1/" />
    <link rel="schema.DCTERMS" href="http://purl.org/dc/terms/" />

    <meta name="DC.title" content="Result of vulneralibity scan" /> 
    <meta name="DC.creator.personalName" content="László Béres" /> 
    <meta name="DC.creator.personalName.Address" content="beres.laszlo1990@gmail.com"/> 
    <meta name="DC.contributor.personalName" content="László Béres" /> 
    <meta name="DC.contributor.personalName.Address" content="beres.laszlo1990@gmail.com"/> 
    <meta name="DC.publisher" content="László Béres" /> 
    <meta name="DC.publisher.Address" content="beres.laszlo1990@gmail.com"/> 
    <meta name="DC.identifier" scheme="URL" content="https://vulneralibity-scan.darkdevops.com" /> 
    <meta name="DC.source" content="https://vulneralibity-scan.darkdevops.com" /> 
    <meta name="DC.relation" scheme="URL" content="https://vulneralibity-scan.darkdevops.com" /> 
    <meta name="DC.type" content="IT" /> 
    <meta name="DC.subject" content="IT" /> 
    <meta name="DC.description" content="IT" /> 
    <meta name="DC.language" content="English" /> 
    <meta name="DC.date.X-MetadataLastModified" scheme="W3CDTF" content="2018-08-11"/>
    <meta name="dc.format" scheme="dcterms.IMT" content="text/html" />

    <!--  Open Graph  -->
    <meta property="og:title" content="Result of vulneralibity scan" />
    <meta property="og:url" content="https://vulneralibity-scan.darkdevops.com" />
    <meta property="og:description" content="Result of vulneralibity scan." />
    <meta property="og:image" content="assets/img/background.jpg" />
    <meta property="og:locale" content="hu_HU" />
    <meta property=”og:country-name” content=”Magyarország” />
    <meta property=”og:locality” content=Budapest />
    <meta property=”og:postal-code” content=”1134” />
    <meta property="og:type" content="website" />
    <meta property="og:site_name" content="Result of vulneralibity scan" />
    <meta property=”og:email” content=”bereslaszlo.1990@gmail.com” />
    <meta property=”og:phone_number” content=”+36-70/882-45-44” />
{{- if . }}
    <style>
      .loader {
        position: fixed;
        top: 0px;
        left: 0px;
        z-index: 9999;
        width: 100%;
        height: 100%;
        background: #272727;
      }

      .loader-icon {
        position: fixed;
        border: 16px solid #272727;
        border-radius: 50%;
        border-top: 15px solid #f3ca2f;
        border-bottom: 15px solid #f3ca2f;
        width: 120px;
        height: 120px;
        top: calc(50% - 60px);
        left: calc(50% - 60px);
        z-index: 9999;
        -webkit-animation: spin 1s ease-in-out infinite;
        /* Safari */
        animation: spin 1s ease-in-out infinite;
      }

      /* Safari */
      @-webkit-keyframes spin {
        0% {
            -webkit-transform: rotate(0deg);
        }

        100% {
            -webkit-transform: rotate(360deg);
        }
      }

      @keyframes spin {
        0% {
            transform: rotate(0deg);
        }

        100% {
            transform: rotate(360deg);
        }
      }
      * {
        font-family: "Open Sans", sans-serif;
        font-size: 14px;
        background: #272727;
        color: #fff;
      }
      h1 {
        text-align: center;
      }
      .group-header th {
        font-size: 200%;
      }
      .sub-header th {
        font-size: 150%;
      }
      table, th, td {
        border: 1px solid #f3ca2f;
        border-collapse: collapse;
        white-space: nowrap;
        padding: .3em;
      }
      table {
        margin: 0 auto;
      }
      .severity {
        text-align: center;
        font-weight: bold;
        color: #fafafa;
      }
      .severity-LOW .severity { background-color: #5fbb31; }
      .severity-MEDIUM .severity { background-color: #f3ca2f; }
      .severity-HIGH .severity { background-color: #ff8800; }
      .severity-CRITICAL .severity { background-color: #e40000; }
      .severity-UNKNOWN .severity { background-color: #747474; }
      .severity-LOW { background-color: #5fbb3160; }
      .severity-MEDIUM { background-color: #e9c60060; }
      .severity-HIGH { background-color: #ff880060; }
      .severity-CRITICAL { background-color: #e4000060; }
      .severity-UNKNOWN { background-color: #74747460; }
      table tr td:first-of-type {
        font-weight: bold;
      }
      .links a,
      .links[data-more-links=on] a {
        display: block;
      }
      .links[data-more-links=off] a:nth-of-type(1n+5) {
        display: none;
      }
      a.toggle-more-links { cursor: pointer; }
    </style>
    <title>Result of vulneralibity scan | {{- escapeXML ( index . 0 ).Target }} - Trivy Report - {{ getCurrentTime }}</title>
    <script>
      window.onload = function() {
        document.querySelectorAll('td.links').forEach(function(linkCell) {
          var links = [].concat.apply([], linkCell.querySelectorAll('a'));
          [].sort.apply(links, function(a, b) {
            return a.href > b.href ? 1 : -1;
          });
          links.forEach(function(link, idx) {
            if (links.length > 3 && 3 === idx) {
              var toggleLink = document.createElement('a');
              toggleLink.innerText = "Toggle more links";
              toggleLink.href = "#toggleMore";
              toggleLink.setAttribute("class", "toggle-more-links");
              linkCell.appendChild(toggleLink);
            }
            linkCell.appendChild(link);
          });
        });
        document.querySelectorAll('a.toggle-more-links').forEach(function(toggleLink) {
          toggleLink.onclick = function() {
            var expanded = toggleLink.parentElement.getAttribute("data-more-links");
            toggleLink.parentElement.setAttribute("data-more-links", "on" === expanded ? "off" : "on");
            return false;
          };
        });
      };
    </script>
  </head>
  <body>
    <div class="loader">
      <div class="loader-icon"></div>
    </div>
    <h1>{{- escapeXML ( index . 0 ).Target }} - Trivy Report - {{ getCurrentTime }}</h1>
    <table>
    {{- range . }}
      <tr class="group-header"><th colspan="6">{{ escapeXML .Type }}</th></tr>
      {{- if (eq (len .Vulnerabilities) 0) }}
      <tr><th colspan="6">No Vulnerabilities found</th></tr>
      {{- else }}
      <tr class="sub-header">
        <th>Package</th>
        <th>Vulnerability ID</th>
        <th>Severity</th>
        <th>Installed Version</th>
        <th>Fixed Version</th>
        <th>Links</th>
      </tr>
        {{- range .Vulnerabilities }}
      <tr class="severity-{{ escapeXML .Vulnerability.Severity }}">
        <td class="pkg-name">{{ escapeXML .PkgName }}</td>
        <td>{{ escapeXML .VulnerabilityID }}</td>
        <td class="severity">{{ escapeXML .Vulnerability.Severity }}</td>
        <td class="pkg-version">{{ escapeXML .InstalledVersion }}</td>
        <td>{{ escapeXML .FixedVersion }}</td>
        <td class="links" data-more-links="off">
          {{- range .Vulnerability.References }}
          <a href={{ escapeXML . | printf "%q" }}>{{ escapeXML . }}</a>
          {{- end }}
        </td>
      </tr>
        {{- end }}
      {{- end }}
      {{- if (eq (len .Misconfigurations ) 0) }}
      <tr><th colspan="6">No Misconfigurations found</th></tr>
      {{- else }}
      <tr class="sub-header">
        <th>Type</th>
        <th>Misconf ID</th>
        <th>Check</th>
        <th>Severity</th>
        <th>Message</th>
      </tr>
        {{- range .Misconfigurations }}
      <tr class="severity-{{ escapeXML .Severity }}">
        <td class="misconf-type">{{ escapeXML .Type }}</td>
        <td>{{ escapeXML .ID }}</td>
        <td class="misconf-check">{{ escapeXML .Title }}</td>
        <td class="severity">{{ escapeXML .Severity }}</td>
        <td class="link" data-more-links="off"  style="white-space:normal;"">
          {{ escapeXML .Message }}
          <br>
            <a href={{ escapeXML .PrimaryURL | printf "%q" }}>{{ escapeXML .PrimaryURL }}</a>
          </br>
        </td>
      </tr>
        {{- end }}
      {{- end }}
    {{- end }}
    </table>
{{- else }}
  </head>
  <body>
    <div class="loader">
      <div class="loader-icon"></div>
    </div>
    <h1>Trivy Returned Empty Report</h1>
{{- end }}
    <script src="https://vulneralibity-scan.darkdevops.com/assets/js/jquery-3.6.0.min.js"></script>
    <script>$(window).on('load', function() {$('.loader').fadeOut(1000);});</script>
  </body>
</html>
