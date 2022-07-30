<nav class="navbar navbar-expand-lg bg-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="/profile">Home</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link" href="/logout">Logout</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" aria-current="page" href="ads/create">Create An Ad</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" aria-current="page" href="/ads">See Ads</a>
                </li>
                </li>
                <li class="nav-item">
                    <a class="nav-link" aria-current="page" href="/update">Edit Profile</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                       aria-expanded="false">
                        Dropdown
                    </a>
                    <form action="/profile" method="post">
                        <ul class="dropdown-menu">
                            <button type="submit" style="border: none; background: none; text-align: center" name="forSale"
                                    value="For Sale">For Sale
                            </button><br>
                            <button type="submit" style="border: none; text-align: center" name="jobs" value="Jobs">
                                Jobs
                            </button><br>
                            <button type="submit" style="border: none; text-align: center" name="antiques"
                                    value="Antiques">Antiques
                            </button><br>
                            <button type="submit" style="border: none; text-align: center" name="automotive"
                                    value="Automotive">Automotive
                            </button><br>
                            <button type="submit" style="border: none; text-align: center" name="lookingFor"
                                    value="Looking For">Looking For
                            </button>
                        </ul>
                    </form>
                </li>
            </ul>
            <form class="d-flex" role="search" action="/profile" method="post">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" name="search">
                <button class="btn btn-outline-success" type="submit">Search</button>
            </form>
        </div>
    </div>
</nav>