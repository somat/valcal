using Gtk;

int main (string[] args) {
    Gtk.init (ref args);

    var window = new Window ();
    window.title = "Calendar";
    window.border_width = 10;
    window.window_position = WindowPosition.CENTER;
    window.set_default_size (350, 200);
    window.destroy.connect (Gtk.main_quit);
    
    Frame frame = new Frame("Calendar");
    Calendar calendar = new Calendar();
    
    frame.add(calendar);
    window.add(frame);

    window.show_all ();

    Gtk.main ();
    return 0;
}
