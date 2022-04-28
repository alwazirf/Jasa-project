 <main class="main-content">
    <div class="container-fluid py-4">
        @can('admin')
      <div class="row">
        <div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
          <div class="card">
            <div class="card-body p-3">
              <div class="row">
                <div class="col-8">
                  <div class="numbers">
                    <p class="text-sm mb-0 text-capitalize font-weight-bold">Jumlah Anggota</p>
                    <h5 class="font-weight-bolder mb-0">
                      {{ count($data) }}
                    </h5>
                  </div>
                </div>
                <div class="col-4 text-end">
                  <div class="icon icon-shape bg-gradient-primary shadow text-center border-radius-md">
                    <i class="fa fa-users text-lg opacity-10" aria-hidden="true"></i>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
          <div class="card">
            <div class="card-body p-3">
              <div class="row">
                <div class="col-8">
                  <div class="numbers">
                    <p class="text-sm mb-0 text-capitalize font-weight-bold">Jumlah Pria</p>
                    <h5 class="font-weight-bolder mb-0">
                      {{ $data->where('gender', 'Pria')->count() }}
                    </h5>
                  </div>
                </div>
                <div class="col-4 text-end">
                  <div class="icon icon-shape bg-gradient-primary shadow text-center border-radius-md">
                    <i class="fa fa-male text-lg opacity-10" aria-hidden="true"></i>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
          <div class="card">
            <div class="card-body p-3">
              <div class="row">
                <div class="col-8">
                  <div class="numbers">
                    <p class="text-sm mb-0 text-capitalize font-weight-bold">Jumlah Wanita</p>
                    <h5 class="font-weight-bolder mb-0">
                      {{ $data->where('gender', 'Wanita')->count() }}
                    </h5>
                  </div>
                </div>
                <div class="col-4 text-end">
                  <div class="icon icon-shape bg-gradient-primary shadow text-center border-radius-md">
                    <i class="fa fa-female text-lg opacity-10" aria-hidden="true"></i>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
            <div class="card">
              <div class="card-body p-3">
                <div class="row">
                  <div class="col-8">
                    <div class="numbers">
                      <p class="text-sm mb-0 text-capitalize font-weight-bold">Admin/Admin Wilayah</p>
                      <h5 class="font-weight-bolder mb-0">
                        {{ $users->where('level_id', 1)->count() }} / {{ $users->where('level_id', 2)->count() }}
                      </h5>
                    </div>
                  </div>
                  <div class="col-4 text-end">
                    <div class="icon icon-shape bg-gradient-primary shadow text-center border-radius-md">
                      <i class="fa fa-male text-lg opacity-10" aria-hidden="true"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
      </div>
      <div class="row mt-4">
        <div class="col-lg-5 mb-lg-0 mb-4">
          <div class="card">
            <div class="card-body p-3">
              <h6 class="ms-2 mb-0"> Pendidikan </h6>
              <div class="container border-radius-lg">
                <div class="row">
                  <div class="col-3 py-3 ps-0">
                    <div class="d-flex mb-2">
                      <p class="text-xs mt-1 mb-0 font-weight-bold">SD</p>
                    </div>
                    <h4 class="font-weight-bolder">{{ $data->where('last_education', 'SD')->count() }}</h4>
                  </div>

                  <div class="col-3 py-3 ps-0">
                    <div class="d-flex mb-2">
                      <p class="text-xs mt-1 mb-0 font-weight-bold">SMP</p>
                    </div>
                    <h4 class="font-weight-bolder">{{ $data->where('last_education', 'SMP')->count() }}</h4>
                  </div>

                  <div class="col-3 py-3 ps-0">
                    <div class="d-flex mb-2">
                      <p class="text-xs mt-1 mb-0 font-weight-bold">SMA/SMK</p>
                    </div>
                    <h4 class="font-weight-bolder">{{ $data->where('last_education', 'SMA/SMK')->count() }}</h4>
                  </div>

                  <div class="col-3 py-3 ps-0">
                    <div class="d-flex mb-2">
                      <p class="text-xs mt-1 mb-0 font-weight-bold">D3</p>
                    </div>
                    <h4 class="font-weight-bolder">{{ $data->where('last_education', 'D3')->count() }}</h4>
                  </div>

                  <div class="col-3 py-3 ps-0">
                    <div class="d-flex mb-2">
                      <p class="text-xs mt-1 mb-0 font-weight-bold">D4</p>
                    </div>
                    <h4 class="font-weight-bolder">{{ $data->where('last_education', 'D4')->count() }}</h4>
                  </div>

                  <div class="col-3 py-3 ps-0">
                    <div class="d-flex mb-2">
                      <p class="text-xs mt-1 mb-0 font-weight-bold">S1</p>
                    </div>
                    <h4 class="font-weight-bolder">{{ $data->where('last_education', 'S1')->count() }}</h4>
                  </div>

                  <div class="col-3 py-3 ps-0">
                    <div class="d-flex mb-2">
                      <p class="text-xs mt-1 mb-0 font-weight-bold">S2</p>
                    </div>
                    <h4 class="font-weight-bolder">{{ $data->where('last_education', 'S2')->count() }}</h4>
                  </div>

                  <div class="col-3 py-3 ps-0">
                    <div class="d-flex mb-2">
                      <p class="text-xs mt-1 mb-0 font-weight-bold">S3</p>
                    </div>
                    <h4 class="font-weight-bolder">{{ $data->where('last_education', 'S3')->count() }}</h4>
                  </div>

                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      @endcan
      @can('notadmin')
      <div class="row">
        <div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
          <div class="card">
            <div class="card-body p-3">
              <div class="row">
                <div class="col-8">
                  <div class="numbers">
                    <p class="text-sm mb-0 text-capitalize font-weight-bold">Jumlah Anggota</p>
                    <h5 class="font-weight-bolder mb-0">
                      {{ count($dataMember) }}
                    </h5>
                  </div>
                </div>
                <div class="col-4 text-end">
                  <div class="icon icon-shape bg-gradient-primary shadow text-center border-radius-md">
                    <i class="fa fa-users text-lg opacity-10" aria-hidden="true"></i>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
          <div class="card">
            <div class="card-body p-3">
              <div class="row">
                <div class="col-8">
                  <div class="numbers">
                    <p class="text-sm mb-0 text-capitalize font-weight-bold">Jumlah Pria</p>
                    <h5 class="font-weight-bolder mb-0">
                      {{ $dataMember->where('gender', 'Pria')->count() }}
                    </h5>
                  </div>
                </div>
                <div class="col-4 text-end">
                  <div class="icon icon-shape bg-gradient-primary shadow text-center border-radius-md">
                    <i class="fa fa-male text-lg opacity-10" aria-hidden="true"></i>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
          <div class="card">
            <div class="card-body p-3">
              <div class="row">
                <div class="col-8">
                  <div class="numbers">
                    <p class="text-sm mb-0 text-capitalize font-weight-bold">Jumlah Wanita</p>
                    <h5 class="font-weight-bolder mb-0">
                      {{ $dataMember->where('gender', 'Wanita')->count() }}
                    </h5>
                  </div>
                </div>
                <div class="col-4 text-end">
                  <div class="icon icon-shape bg-gradient-primary shadow text-center border-radius-md">
                    <i class="fa fa-female text-lg opacity-10" aria-hidden="true"></i>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="row mt-4">
        <div class="col-lg-5 mb-lg-0 mb-4">
          <div class="card">
            <div class="card-body p-3">
              <h6 class="ms-2 mb-0"> Pendidikan </h6>
              <div class="container border-radius-lg">
                <div class="row">
                  <div class="col-3 py-3 ps-0">
                    <div class="d-flex mb-2">
                      <p class="text-xs mt-1 mb-0 font-weight-bold">SD</p>
                    </div>
                    <h4 class="font-weight-bolder">{{ $dataMember->where('last_education', 'SD')->count() }}</h4>
                  </div>

                  <div class="col-3 py-3 ps-0">
                    <div class="d-flex mb-2">
                      <p class="text-xs mt-1 mb-0 font-weight-bold">SMP</p>
                    </div>
                    <h4 class="font-weight-bolder">{{ $dataMember->where('last_education', 'SMP')->count() }}</h4>
                  </div>

                  <div class="col-3 py-3 ps-0">
                    <div class="d-flex mb-2">
                      <p class="text-xs mt-1 mb-0 font-weight-bold">SMA/SMK</p>
                    </div>
                    <h4 class="font-weight-bolder">{{ $dataMember->where('last_education', 'SMA/SMK')->count() }}</h4>
                  </div>

                  <div class="col-3 py-3 ps-0">
                    <div class="d-flex mb-2">
                      <p class="text-xs mt-1 mb-0 font-weight-bold">D3</p>
                    </div>
                    <h4 class="font-weight-bolder">{{ $dataMember->where('last_education', 'D3')->count() }}</h4>
                  </div>

                  <div class="col-3 py-3 ps-0">
                    <div class="d-flex mb-2">
                      <p class="text-xs mt-1 mb-0 font-weight-bold">D4</p>
                    </div>
                    <h4 class="font-weight-bolder">{{ $dataMember->where('last_education', 'D4')->count() }}</h4>
                  </div>

                  <div class="col-3 py-3 ps-0">
                    <div class="d-flex mb-2">
                      <p class="text-xs mt-1 mb-0 font-weight-bold">S1</p>
                    </div>
                    <h4 class="font-weight-bolder">{{ $dataMember->where('last_education', 'S1')->count() }}</h4>
                  </div>

                  <div class="col-3 py-3 ps-0">
                    <div class="d-flex mb-2">
                      <p class="text-xs mt-1 mb-0 font-weight-bold">S2</p>
                    </div>
                    <h4 class="font-weight-bolder">{{ $dataMember->where('last_education', 'S2')->count() }}</h4>
                  </div>

                  <div class="col-3 py-3 ps-0">
                    <div class="d-flex mb-2">
                      <p class="text-xs mt-1 mb-0 font-weight-bold">S3</p>
                    </div>
                    <h4 class="font-weight-bolder">{{ $dataMember->where('last_education', 'S3')->count() }}</h4>
                  </div>

                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      @endcan
    </div>
  </main>

  <!--   Core JS Files   -->
  <script src="../assets/js/plugins/chartjs.min.js"></script>
  <script src="../assets/js/plugins/Chart.extension.js"></script>
  <script>
    var ctx = document.getElementById("chart-bars").getContext("2d");

    new Chart(ctx, {
      type: "bar",
      data: {
        labels: ["Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
        datasets: [{
          label: "Sales",
          tension: 0.4,
          borderWidth: 0,
          pointRadius: 0,
          backgroundColor: "#fff",
          data: [450, 200, 100, 220, 500, 100, 400, 230, 500],
          maxBarThickness: 6
        }, ],
      },
      options: {
        responsive: true,
        maintainAspectRatio: false,
        legend: {
          display: false,
        },
        tooltips: {
          enabled: true,
          mode: "index",
          intersect: false,
        },
        scales: {
          yAxes: [{
            gridLines: {
              display: false,
            },
            ticks: {
              suggestedMin: 0,
              suggestedMax: 500,
              beginAtZero: true,
              padding: 0,
              fontSize: 14,
              lineHeight: 3,
              fontColor: "#fff",
              fontStyle: 'normal',
              fontFamily: "Open Sans",
            },
          }, ],
          xAxes: [{
            gridLines: {
              display: false,
            },
            ticks: {
              display: false,
              padding: 20,
            },
          }, ],
        },
      },
    });

    var ctx2 = document.getElementById("chart-line").getContext("2d");

    var gradientStroke1 = ctx2.createLinearGradient(0, 230, 0, 50);

    gradientStroke1.addColorStop(1, 'rgba(253,235,173,0.4)');
    gradientStroke1.addColorStop(0.2, 'rgba(245,57,57,0.0)');
    gradientStroke1.addColorStop(0, 'rgba(255,214,61,0)'); //purple colors

    var gradientStroke2 = ctx2.createLinearGradient(0, 230, 0, 50);

    gradientStroke2.addColorStop(1, 'rgba(20,23,39,0.4)');
    gradientStroke2.addColorStop(0.2, 'rgba(245,57,57,0.0)');
    gradientStroke2.addColorStop(0, 'rgba(255,214,61,0)'); //purple colors


    new Chart(ctx2, {
      type: "line",
      data: {
        labels: ["Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
        datasets: [{
            label: "Mobile apps",
            tension: 0.4,
            borderWidth: 0,
            pointRadius: 0,
            borderColor: "#fbcf33",
            borderWidth: 3,
            backgroundColor: gradientStroke1,
            data: [50, 40, 300, 220, 500, 250, 400, 230, 500],
            maxBarThickness: 6

          },
          {
            label: "Websites",
            tension: 0.4,
            borderWidth: 0,
            pointRadius: 0,
            borderColor: "#f53939",
            borderWidth: 3,
            backgroundColor: gradientStroke2,
            data: [30, 90, 40, 140, 290, 290, 340, 230, 400],
            maxBarThickness: 6

          },
        ],
      },
      options: {
        responsive: true,
        maintainAspectRatio: false,
        legend: {
          display: false,
        },
        tooltips: {
          enabled: true,
          mode: "index",
          intersect: false,
        },
        scales: {
          yAxes: [{
            gridLines: {
              borderDash: [2],
              borderDashOffset: [2],
              color: '#dee2e6',
              zeroLineColor: '#dee2e6',
              zeroLineWidth: 1,
              zeroLineBorderDash: [2],
              drawBorder: false,
            },
            ticks: {
              suggestedMin: 0,
              suggestedMax: 500,
              beginAtZero: true,
              padding: 10,
              fontSize: 11,
              fontColor: '#adb5bd',
              lineHeight: 3,
              fontStyle: 'normal',
              fontFamily: "Open Sans",
            },
          }, ],
          xAxes: [{
            gridLines: {
              zeroLineColor: 'rgba(0,0,0,0)',
              display: false,
            },
            ticks: {
              padding: 10,
              fontSize: 11,
              fontColor: '#adb5bd',
              lineHeight: 3,
              fontStyle: 'normal',
              fontFamily: "Open Sans",
            },
          }, ],
        },
      },
    });
  </script>
