class Solution:
    def distanceBetweenBusStops(self, distance: List[int], start: int, destination: int) -> int:
        clockwise = 0
        counterclockwise = 0
        if start > destination:
            start, destination = destination, start
        for i in range(start, destination):
            clockwise += distance[i]
        for i in range(0, start):
            counterclockwise += distance[i]
        for i in range(destination, len(distance)):
            counterclockwise += distance[i]
        return min(clockwise, counterclockwise)


