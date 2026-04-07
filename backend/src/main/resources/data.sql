-- =============================================
-- Smart Campus - Seed Data (MySQL)
-- =============================================

-- Users
INSERT IGNORE INTO users (id, name, email, role, provider, provider_id, created_at)
VALUES
  (1, 'Admin User',    'admin@campus.edu',   'ADMIN',   'local',  'local-1', NOW()),
  (2, 'Alice Johnson', 'alice@campus.edu',   'STUDENT', 'google', 'g-001',   NOW()),
  (3, 'Bob Smith',     'bob@campus.edu',     'STAFF',   'google', 'g-002',   NOW()),
  (4, 'Carol White',   'carol@campus.edu',   'STUDENT', 'google', 'g-003',   NOW());

-- Resources
INSERT IGNORE INTO resources (id, name, type, location, capacity, status, description, created_at, updated_at)
VALUES
  (1, 'Lecture Hall A',     'LECTURE_HALL', 'Block A, Ground Floor', 200, 'AVAILABLE', 'Main lecture hall with projector and audio system', NOW(), NOW()),
  (2, 'Computer Lab 1',     'LAB',          'Block B, First Floor',  40,  'AVAILABLE', 'Windows PCs with development tools installed',       NOW(), NOW()),
  (3, 'Meeting Room 101',   'MEETING_ROOM', 'Admin Block, Floor 1',  12,  'AVAILABLE', 'Conference room with whiteboard and TV screen',       NOW(), NOW()),
  (4, 'Sports Ground',      'SPORTS',       'Campus Grounds',        100, 'AVAILABLE', 'Multi-purpose outdoor sports area',                   NOW(), NOW()),
  (5, 'Library Study Room', 'STUDY_ROOM',   'Library, Second Floor', 20,  'MAINTENANCE','Quiet study room - under maintenance',               NOW(), NOW());

-- Bookings
INSERT IGNORE INTO bookings (id, resource_id, user_id, title, start_time, end_time, status, notes, created_at, updated_at)
VALUES
  (1, 1, 2, 'PAF Lecture',          '2026-03-15 09:00:00', '2026-03-15 11:00:00', 'APPROVED',  'Weekly PAF module lecture',         NOW(), NOW()),
  (2, 2, 3, 'Web Dev Workshop',     '2026-03-16 14:00:00', '2026-03-16 17:00:00', 'PENDING',   'React & Spring Boot workshop',      NOW(), NOW()),
  (3, 3, 4, 'Group Project Meeting','2026-03-17 10:00:00', '2026-03-17 12:00:00', 'APPROVED',  'Smart Campus project discussion',   NOW(), NOW()),
  (4, 1, 2, 'Guest Lecture',        '2026-03-18 09:00:00', '2026-03-18 10:00:00', 'CANCELLED', 'Speaker cancelled',                 NOW(), NOW());

-- Tickets
INSERT IGNORE INTO tickets (id, title, description, category, priority, status, user_id, created_at, updated_at)
VALUES
  (1, 'Projector not working in Hall A',  'The projector in Lecture Hall A fails to display HDMI input', 'MAINTENANCE', 'HIGH',   'OPEN',        1, NOW(), NOW()),
  (2, 'AC broken in Lab 1',               'Air conditioning unit making loud noise and not cooling',      'MAINTENANCE', 'MEDIUM', 'IN_PROGRESS', 2, NOW(), NOW()),
  (3, 'WiFi connectivity issue',          'No WiFi signal on the third floor of Block C',                 'IT',          'HIGH',   'OPEN',        3, NOW(), NOW()),
  (4, 'Broken chairs in Meeting Room 101','Three chairs have broken legs and are unusable',               'FACILITIES',  'LOW',    'RESOLVED',    4, NOW(), NOW());

-- Notifications
INSERT IGNORE INTO notifications (id, user_id, title, message, type, is_read, created_at)
VALUES
  (1, 2, 'Booking Approved',   'Your booking for Lecture Hall A on Mar 15 has been approved.',  'BOOKING',  false, NOW()),
  (2, 3, 'Booking Pending',    'Your Web Dev Workshop booking is under review.',                 'BOOKING',  false, NOW()),
  (3, 4, 'Booking Approved',   'Your Group Project Meeting booking has been approved.',          'BOOKING',  true,  NOW()),
  (4, 1, 'New Ticket',         'A new HIGH priority maintenance ticket has been submitted.',     'TICKET',   false, NOW()),
  (5, 2, 'Ticket Update',      'Ticket #2 (AC broken) is now IN PROGRESS.',                     'TICKET',   false, NOW());

-- Comments
INSERT IGNORE INTO comments (id, ticket_id, user_id, content, created_at)
VALUES
  (1, 1, 1, 'Technician has been notified. Will inspect tomorrow morning.',   NOW()),
  (2, 2, 3, 'The AC unit compressor is faulty. Parts ordered - 3 day ETA.',   NOW()),
  (3, 3, 1, 'IT team is investigating. Please use ethernet in the meantime.', NOW());

