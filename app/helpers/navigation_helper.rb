module NavigationHelper
    def nav_links
        [
            { name: 'Home', path: root_path },
            { name: 'About', path: root_path },
            { name: 'Services', path: root_path },
            { name: 'Projects', path: projects_path },
            { name: 'Blog', path: blog_path },
            { name: 'Contact', path: contact_path }
        ]
    end 

end