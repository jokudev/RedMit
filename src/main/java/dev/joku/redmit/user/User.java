package dev.joku.redmit.user;

import java.time.Instant;

import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Table;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Table("users")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class User {
  @Id
  private Long id;
  private String username;
  private String email;
  private String password;
  private Instant createdAt;
  private Instant updatedAt;
  private boolean enabled;
}
