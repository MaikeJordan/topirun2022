/**
 * @author Maike
 */
public class ProjectResponse {

    public String projectId;
    public String externalId;

    public static ProjectResponse fromJson(string payload) {
        return (ProjectResponse) JSON.deserialize(payload, ProjectResponse.class);
     }

}