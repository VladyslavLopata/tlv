const missionQuery = r'''
      query GetMissions($missionName: String!, $offset: Int!) {
        launches(limit: 10, offset: $offset, find: {mission_name: $missionName}) {
          mission_name
          details
        }
      }
    ''';
