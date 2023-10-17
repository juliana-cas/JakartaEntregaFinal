package repository;

import mapper.dtos.GradesDto;

import java.util.List;

public interface GradesRepository {
    List<GradesDto> gradesList();
    GradesDto byId(Long id);
    void update(GradesDto grades);

    void delete(Long id);
}