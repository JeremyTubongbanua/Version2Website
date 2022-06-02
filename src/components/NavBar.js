import React from 'react';
import classes from './NavBar.module.css';

const NavBar = (props) => {
    return (
        <div className={classes.container}>
            <h1>VERSION 2</h1>
            <div className={classes.nav_button_container}>
                <button>Home</button>
                <button>About</button>
                <button>Contact</button>
            </div>
        </div>
    );
}

export default NavBar;