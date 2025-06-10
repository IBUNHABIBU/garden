module NavigationHelper
    def nav_links
        [
            { name: 'Home', path: root_path },
            { name: 'About', path: about_path },
            { name: 'Services', path: services_path },
            { name: 'Projects', path: projects_path },
            { name: 'Blog', path: blog_path },
            { name: 'Contact', path: contact_path }
        ]
    end 
end