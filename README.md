# Status Page Aggregator

Status Page Aggregator is an open-source project specifically designed for status page aggregation, providing a centralized and comprehensive view of the statuses of various services. Built with Vue.js and Ruby, this powerful status aggregator enables you to effortlessly monitor the health and incidents of multiple services in one place. Whether you're managing a small startup or a large enterprise, Status Page Aggregator simplifies the process of status page aggregation, ensuring you stay informed about the performance and reliability of your critical services.

## Table of Contents

- [Features](#features)
- [Example](#example)
- [Installation](#installation)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)
- [Acknowledgements](#acknowledgements)

## Features of Status Page Aggregator

- Fetch and display status of multiple services
- Support for any status page hosted by Atlassian Statuspage
- Sort services based on their status
- Refresh statuses automatically every minute
- Visual indicators for different status levels (Up, Minor, Major, Maintenance)
- Detailed view of incidents for each service

## Example

<img width="1272" alt="Screenshot 2024-06-20 at 5 07 01 PM" src="https://github.com/StatusGator/status-page-aggregator/assets/925/83f48cbb-f68b-453e-b3d5-f2710efd7573">

## Installation

Follow these steps to set up the project locally:

### Prerequisites

- [Ruby](https://www.ruby-lang.org/en/documentation/installation/)
- [Bundler](https://bundler.io/)
- [Vue.js](https://vuejs.org/)

### Steps

1. **Clone the repository:**
    ```bash
    git clone https://github.com/your-username/status-page-aggregator.git
    cd status-page-aggregator
    ```

2. **Install dependencies:**
    ```bash
    bundle install
    ```

3. **Run the application:**
    ```bash
    rackup
    ```

4. **Open the application:**
    Open your browser and navigate to `http://127.0.0.1:9292/`.

## Usage

After starting the application, the Status Page Aggregator will display the status of various services. Services with an active issue or incident will be displayed at the top, followed by services that are operating normally. The aggregated status page data will be refreshed automatically every minute.

### Configuration

To configure the list of status pages aggregated, just edit the `config/status_pages.yml` file. Any status page hosted by Atlassian's Statuspage service can be added to the list, just provide the root URL to the status page.

## Contributing

Contributions are welcome! Please follow these steps to contribute:

1. Fork the repository
2. Create a new branch (`git checkout -b feature-branch`)
3. Make your changes
4. Commit your changes (`git commit -m 'Add new feature'`)
5. Push to the branch (`git push origin feature-branch`)
6. Open a pull request

Please ensure your code follows the project's coding standards and includes appropriate tests.

## License

This project is licensed under the MIT License.

## Keywords

Keywords: status page aggregator, status page aggregation, how to aggregate status pages, uptime status pages, service status checker, status alert system, downtime tracking tool, cloud service status tracker. 

## Acknowledgements

- [StatusGator](https://statusgator.com) for more full-featured status page aggregator
- [Vue.js](https://vuejs.org) for the front-end framework
- [Ruby](https://www.ruby-lang.org/en/) for the back-end framework
