--List all forthcoming shows by a particular band

select e.Name as 'Show Name', b.Name as 'Band Name', e.ShowDateTime as 'Show on' , v.Name as 'At Venue' , v.City as 'City' from EventInfo e
join Band b on b.BandId = e.BandId
join Venue v on v.VenueId = e.VenueId

--List all forthcoming shows in a particular city

select v.City as 'City', ei.Name as 'Show name', ei.ShowDateTime as 'Coming on'  from Venue v
join EventInfo ei on ei.VenueId = v.VenueId
 
 --List all forthcoming shows for a specific venue

 select b.Name 'Your favourite band ', ei.Name as 'With the show', v.Name as 'Comming to', v.City, ei.ShowDateTime as 'Coming on'   from Venue v
 join EventInfo ei on ei.VenueId = v.VenueId
 join Band b on b.BandId = ei.BandId

 --Display the details of a specific show – the band who are performing, the start time and the venue.

 select ei.Name as 'Show', a.Name as 'Artist Name' from EventInfo ei
 join ArtistInTheShow show on show.EventInfoId = ei.EventId 
 join Artist a on a.ArtistId = show.ArtistId
 where ei.Name = 'A Night at the Opera' and a.IsActive = 1

 -- Display ticket prices for a specific show 

 select ei.Name, v.Name,  s.Type, p.Price from Pricing p
 join EventInfo ei on ei.EventId = p.EventId
 join Seating s on s.SeatingId = p.SeatingId
 join Venue v on v.VenueId = ei.VenueId
 where ei.Name = 'A Night at the Opera'


 --Display a list of customers who have purchased tickets for a specific show

SELECT  u.FirstName + ' ' + u.LastName as 'Customer who bought' , ei.Name as 'To Show' from Booking b
join EventInfo ei on ei.EventId = b.EventId
join [User] u on u.UserId = b.UserId
 where ei.Name = 'A Night at the Opera'

 