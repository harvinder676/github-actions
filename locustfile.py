from locust import HttpUser, task

class HelloWorldUser(HttpUser):
    @task
    def hello_world(self):
        response=self.client.post("/add_data", json={"a":10, "b":9})
        