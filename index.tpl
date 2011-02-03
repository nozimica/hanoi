[trim]
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Towers of Hanoi Demonstration</title>
<meta name="description" content="A page containing the puzzle, variations, and
solutions." />
<meta name="keywords" content="tower, towers, of, hanoi, puzzle, variation,
variations, solution, solutions, disk, disks, stack, stacks" />
<meta name="author" content="Brandon Evans" />
<meta http-equiv="Content-Type" content="application/xhtml+xml; charset=utf-8"
/>
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/lib/base64.js"></script>
<script type="text/javascript" src="js/lib/jquery.js"></script>
<script type="text/javascript" src="js/lib/json2.js"></script>
<script type="text/javascript" src="js/lib/mobile.js"></script>
<script type="text/javascript" src="js/lib/sylvester.js"></script>
<script type="text/javascript" src="js/main.js"></script>
<script type="text/javascript" src="js/solve.js"></script>
</head>
<body>
<div style="text-align: center">
    <script type="text/javascript">
    <!--
    google_ad_client = "pub-4664609413658128";
    /* 468x60, created 9/25/10 */
    google_ad_slot = "8979098997";
    google_ad_width = 468;
    google_ad_height = 60;
    //-->
    </script>
    <script type="text/javascript"
    src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
    </script>
</div>
<h1>Towers of Hanoi Demonstration</h1>
<h3>
    A page containing the puzzle, variations, and solutions.
</h3>
<p>
    Wikipedia describes <a href="http://en.wikipedia.org/wiki/Tower_of_Hanoi"
    target="_blank">The Towers of Hanoi</a> as a mathematical puzzle that has
    become a popular example of the concept of <a
    href="http://en.wikipedia.org/wiki/Recursion_(computer_science)"
    target="_blank">recursion</a>. On this page, we have provided the puzzle,
    several options used to create variations of it, a method of playing these
    games manually, and solutions to many of the combinations. We made this
    program to educate, entertain, and strive for the best solutions to these
    variations. Please <a href="mailto:admin@brandonevans.org">contact me</a>
    if you have feedback or contributions. You can see the stable version of
    this page <a href="/hanoi/">here</a> and the development version
    <a href="/dev/hanoi/">here</a>. Thanks for visiting.
</p>
<div class="yesscript" style="display: none">
    <div id="towers"></div>
    <div style="clear: both"></div>
    <fieldset>
        <legend>Solution</legend>
        <table>
            <tr>
                <td width="50%"><label for="mode">Mode</label></td>
                <td width="50%">
                    <select id="mode">
                        <option>Wait</option>
                        <option>Repeat</option>
                        <option>Increase</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>
                    <input type="button" id="switch" value="Start" />
                </td>
                <td>
                    <input type="button" id="startover" value="Start Over" />
                </td>
            </tr>
            <tr>
                <td>
                    <div class="stopped">
                        <input type="button" id="undo" value="Undo" />
                    </div>
                </td>
                <td>
                    <div class="stopped">
                        <input type="button" id="redo" value="Redo" />
                    </div>
                </td>
            </tr>
            <tr>
                <td><label for="delay">Delay</label></td>
                <td>
                    <input type="text" id="delay" />
                </td>
            </tr>
            <tr>
                <td>Moves</td>
                <td>
                    <span id="moves"></span>
                </td>
            </tr>
            <tr>
                <td>Minimum Moves</td>
                <td>
                    <span id="minimum"></span>
                </td>
            </tr>
            <tr>
                <td>
                    <input type="checkbox" id="showlog" />
                    <label for="showlog">Log</label>
                </td>
                <td>
                    <textarea id="log" rows="5" cols="30" readonly="readonly"
                    style="display: none"></textarea>
                </td>
            </tr>
            <tr>
                <td>
                    <input type="checkbox" id="showexport" />
                    <label for="showexport">Export Moves</label>
                </td>
                <td>
                    <textarea id="export" rows="1" cols="30"
                    readonly="readonly" style="display: none"></textarea>
                </td>
            </tr>
            <tr>
                <td>
                    <input type="checkbox" id="showimport" />
                    <label for="showimport">Import Moves</label>
                </td>
                <td>
                    <textarea id="import" rows="1" cols="30"
                    style="display: none"></textarea>
                </td>
            </tr>
        </table>
    </fieldset>
    <fieldset>
        <legend>Settings</legend>
        <table>
            <tr>
                <td width="50%"><label for="disks">Disks per Stack</label></td>
                <td width="50%">
                    <input type="text" id="disks" />
                </td>
            </tr>
            <tr class="antwerp">
                <td><label for="per">Towers per Stack</label></td>
                <td>
                    <input type="text" id="per" />
                </td>
            </tr>
            <tr class="antwerp">
                <td><label for="stacks">Stacks</label></td>
                <td>
                    <input type="text" id="stacks" />
                </td>
            </tr>
            <tr>
                <td><label for="shades">Shades</label></td>
                <td>
                    <input type="text" id="shades" />
                </td>
            </tr>
            <tr class="shade">
                <td><label for="top">Top Shade</label></td>
                <td>
                    <select id="top">
                        <option>Any</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>
                    <input type="checkbox" id="alternate" />
                    <label for="alternate">Alternate</label>
                </td>
                <td>
                    <input type="checkbox" id="change" />
                    <label for="change">Change</label>
                </td>
            </tr>
            <tr>
                <td>
                    <input type="checkbox" id="random" />
                    <label for="random">Random</label>
                </td>
                <td>
                    <input type="checkbox" id="shuffle" />
                    <label for="shuffle">Shuffle</label>
                </td>
            </tr>
            <tr>
                <td>
                    <input type="checkbox" id="antwerp" />
                    <label for="antwerp">Antwerp</label>
                </td>
                <td class="shade">
                    <input type="checkbox" id="home" />
                    <label for="home">Home</label>
                </td>
            </tr>
        </table>
    </fieldset>
    <fieldset>
        <legend>Restrictions</legend>
        <table>
            <tr>
                <td width="50%">
                    <input type="radio" name="restriction" id="none"
                    value="none" />
                    <label for="none">No additional restrictions.</label>
                </td>
                <td width="50%">
                    <input type="radio" name="restriction" id="linear"
                    value="linear" /> <label for="linear">Disks can only move
                    linearly</label>
                </td>
            </tr>
            <tr>
                <td>
                    <input type="radio" name="restriction" id="clock"
                    value="clock" /> <label for="clock">Disks can only move
                    cyclicly clockwise</label>
                </td>
                <td>
                    <input type="radio" name="restriction" id="counter"
                    value="counter" /> <label for="counter">Disks can only move
                    cyclicly counterclockwise</label>
                </td>
            </tr>
            <tr>
                <td>
                    <input type="radio" name="restriction" id="different"
                    value="different" /> <label for="different">Disks can't
                    touch disks of a different shade</label>
                </td>
                <td>
                    <input type="radio" name="restriction" id="same"
                    value="same" /> <label for="same">Disks can't touch disks
                    of the same shade</label>
                </td>
            </tr>
            <tr>
                <td>
                    <input type="radio" name="restriction" id="group"
                    value="group" /> <label for="group">In any group of S =
                    Shades disks, there can't be two disks of the same
                    shade</label>
                </td>
                <td>
                    <input type="checkbox" id="size" />
                    <label for="size">Disks of the same size can be placed on
                    eachother</label>
                </td>
            </tr>
        </table>
    </fieldset>
    <p>
        URL for this configuration: <textarea id="configuration" rows="1"
        cols="30"></textarea>
    </p>
    <h2>Development</h2>
    [loop value="value" iterable="repo"]
    [if condition="value.second"]
    <p><a id="showother" href="#null">See the other revisions</a></p>
    <div id="other">
    [/if]
    <p>Posted by [var]value.user[/var] on [var]value.date[/var]:</p>
    <div style="font: 1em/1.2em monospace">
        [var entities="false"]value.description[/var]
    </div>
    [if condition="value.last"]
    </div>
    [/if]
    [/loop]
    <p>
        To get the Mercurial repository for the stable version of this page,
        run:
    </p>
    <div style="font: 1em/1.2em monospace">
        hg clone http://www.brandonevans.org/hanoi/
    </div>
    <p>
        To get the Mercurial repository for the development version of this
        page, run:
    </p>
    <div style="font: 1em/1.2em monospace">
        hg clone http://www.brandonevans.org/dev/hanoi/
    </div>
    <h2>The Puzzle</h2>
    <p>The classic Towers of Hanoi puzzle has two rules:</p>
    <ol>
        <li>Only one disk shall be moved at a time</li>
        <li>
            A disk must be moved onto either an empty tower or a bigger disk.
        </li>
    </ol>
    <p>
        To win, following these rules, transfer all of the disks to the tower
        farthest to the right in size order. Even in this basic case, this may
        prove to be much more difficult than expected, and the number of moves
        it takes to finish grows exponentially as you increase the number of
        disks.
    </p>
    <h2>How to Use this Page</h2>
    <p>
        This page provides several ways to play. These methods can be put into
        two categories: manual and automatic ones. You can play manually by
        clicking a tower to take off the top disk and clicking another tower to
        place it. In addition, you can do the same thing by using the number
        keys to indicate the tower you want to move to or from, although this
        doesn't work for towers greater than 9.
    </p>
    <p>
        For the automatic methods, depending on what options you have provided,
        there might be a built-in <b>Solution</b> that you can watch. To see if
        we have implemented a solution for this setup, check the <em>Minimum
        Moves</em> field; if it shows something other than "Unsolved", click
        <em>Start</em> to begin the solution and <em>Stop</em> to stop it.
        Also, if you have come up with your own solution and want to save the
        moves you made, check <em>Export Moves</em>, copy the contents of the
        box that appears, check <em>Import Moves</em>, paste the contents into
        the box that appears, and press Start. It will then execute the moves
        you did previously. The program will use this method as long as you
        keep the Import Moves box open and it contains moves. For both of these
        automatic methods, you can adjust the <em>Delay</em> field to change
        the number of milliseconds the the program will wait in between moves.
        What happens when the program finishes making the moves depends on the
        selected <em>Mode</em>: selecting "Wait" will make it await further
        input, "Repeat" will restart the solution with the same options
        selected, and "Increase" will restart the solution with one additional
        disk.
    </p>
    <p>
        We have also provided some additional information fields in the
        Solution fieldset that deserve mentioning:
    </p>
    <ul>
        <li><em>Moves</em> shows the number of moves that have been made.</li>
        <li>
            <em>Log</em> shows the moves made. You can show them by checking
            the checkbox.
        </li>
        <li>
            <em>Minimum Moves</em> shows the smallest number of moves it takes
            to finish a given configuration known. In other words, it shows how
            many moves the built-in solution takes to complete, if this number
            can be calculated (It shows "N/A" if the puzzle can be solved, but
            it has no method of calculating the number of moves it would take).
            This means you can get a solution in less moves than those
            provided, as few of these configurations have a solution that has
            been proven optimal.
        </li>
    </ul>
    <p>
        Once you get a hang of playing the game, you might want to change up
        the <b>Settings</b>. Most programs like this one only have you adjust
        the number of disks, whereas this one provides many other settings that
        deserve explaining:
    </p>
    <ul>
        <li>
            <em>Towers per Stack</em> adjusts how many towers each stack can
            use. Although increasing this number usually greatly reduces the
            number of moves needed to win, it also makes the solution much
            harder to prove optimal.
        </li>
        <li>
            <em>Stacks</em> adjusts how many different colored stacks get
            placed on the towers. In the default case, making this number more
            than one changes the layout of the puzzle so that each stack has
            its own game, and the games interlock. This introduces a new rule:
            No disk of a given stack can go on a tower that has a
            different colored base and peg. This still allows disk of the same
            color but a different shade, though. Under this configuration,
            rotate the colored stacks clockwise to win.
        </li>
        <li>
            Checking <em>Antwerp</em> changes the layout of a game with
            multiple stacks. Instead of placing towers in between the different
            stacks, the program places them all next to each other, and each
            stack can go on any tower. Again, to win, you must rotate the
            colored stacks clockwise. To enable this, you must also enable
            <em>Disks of the same size can be placed on each other</em> in the
            restrictions section.
        </li>
        <li>
            The <em>Shades</em> option adjusts how many shades each stack has,
            the <em>Alternate</em> option makes the shades of the disks
            alternate on the stacks, and the <em>Change</em> option makes the
            shade of a disk change when moved. These settings only matter when
            you enable certain restrictions.
        </li>
        <li>
            The <em>Random</em> option randomly places disks on the towers,
            while the <em>Shuffle</em> option shuffles the order of the disks.
            These options might create initial setups that break rules for the
            given variation. However, in many cases, it's still possible to
            solve the puzzle if you don't make any illegal moves from that
            point on. That said, we're still working on these features, so
            there might be some cases in which they create unsolvable puzzles.
        </li>
    </ul>
    <p>
        Lastly, you can enable several <b>Restrictions</b>. These restrictions
        have been labeled in an obvious way, so we won't explain what each of
        them does. However, if you enable any of the restrictions regarding
        shade, and you have enabled <em>Change</em>, two additional settings
        appear:
    </p>
    <ul>
        <li>
            <em>Top Shade</em> states what shade the top disk of each
            stack must be to complete the puzzle. This value can either be
            "Any" or a number. Initially, top disk has the shade 1. If you have
            set <em>Shades</em> to more than 1, then the color that disk
            changes to upon moving would be shade 2, and so on.
        </li>
        <li>
            If you check the <em>Home</em> option, then to win, all the stacks
            must return to where they started with the top disk having a
            different shade than it originally had. For this reason, when you
            check this option, there must be at least two <em>Shades</em>, and
            the <em>Top Shade</em> can't be "Any" nor 1.
        </li>
    </ul>
    <p>
        If you don't set any additional restrictions, you can also select
        <em>Star Towers</em>. To make a tower a star tower, check the checkbox
        on top of it. If you have selected star towers, moves must either be
        from or to them.
    </p>
    <p>
        Finally, if you want to share the options you have set, copy the
        <em>URL for this configuration</em>.
    </p>
</div>
<div class="noscript">
    <p style="text-align: center">
        <strong>In order to use this page, you must enable Javascript.</strong>
    </p>
</div>
<p style="text-align: center">
    Copyright &copy; 2010-2011 <a href="http://www.brandonevans.org/">Brandon
    Evans</a>. All Rights Reserved.
</p>
<p>
    Special thanks to Fred Lunnon for <a href="java/">his Java implementation I
    based this page on</a>, Victor Mascolo for inventing the original
    Multistack Hanoi puzzle and models (U.S. patent number 7,566,057), Paul
    Stockmeyer and Steve Minsker for their papers on several variations as well
    as other contributions, Alex Munroe for his example of a custom built
    generator as well as other assistance, Chris Santiago for design help,
    James Rhodes, Ian Rahimi, and Samuel Sieb for support, and my sister,
    Lindsay Evans, for proposing an alternative solution to the Classic
    multiple stacks problem, and for being supportive with all of my endeavors.
</p>
<div style="text-align: center">
    <p>
        <a href="http://www.suitframework.com/slacks/?referrer=true"
        target="_blank"><img src="images/slacks.png"
        alt="Debug with SLACKS" /></a>
    </p>
    <p>
        <a href="http://www.suitframework.com/" target="_blank"><img
        src="images/poweredby/suit.png" alt="SUIT" /></a>
        <a href="http://www.python.org/" target="_blank"><img
        src="images/poweredby/python.png" alt="Python" /></a>
    </p>
</div>
<div style="text-align: center">
    <script type="text/javascript">
    <!--
    google_ad_client = "pub-4664609413658128";
    /* 468x60, created 9/25/10 */
    google_ad_slot = "8979098997";
    google_ad_width = 468;
    google_ad_height = 60;
    //-->
    </script>
    <script type="text/javascript"
    src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
    </script>
</div>
</body>
</html>
[/trim]