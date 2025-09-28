package model;

import jakarta.persistence.*;

@Entity
@Table(name = "assignments")
public class Assignment {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "assignment_name", nullable = false)
    private String assignmentName;

    @Column(name = "assignment_link", nullable = false)
    private String assignmentLink;

    public Assignment() {}

    public Assignment(String assignmentName, String assignmentLink) {
        this.assignmentName = assignmentName;
        this.assignmentLink = assignmentLink;
    }

    public Assignment(Long id, String assignmentName, String assignmentLink) {
        this.id = id;
        this.assignmentName = assignmentName;
        this.assignmentLink = assignmentLink;
    }

    public Long getId() {
        return id;
    }

    public String getAssignmentName() {
        return assignmentName;
    }

    public void setAssignmentName(String assignmentName) {
        this.assignmentName = assignmentName;
    }

    public String getAssignmentLink() {
        return assignmentLink;
    }

    public void setAssignmentLink(String assignmentLink) {
        this.assignmentLink = assignmentLink;
    }
}
