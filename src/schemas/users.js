import z from 'zod';

const userSchema = z.object({
  Name: z.string().min(2, {
    message: 'Name must be at least 2 characters long'
  }),
  UserName: z.string().min(5, {
    message: 'Username must be at least 5 characters long'
  }),
  Pass: z.string().min(8, {
    message: 'Password must be at least 8 characters long'
  }),
  Role: z.enum(['Moderator', 'Student']).default('Student'),
  State: z.enum(['Active', 'Inactive']).default('Active'),
  // optional fields
  avatar: z.string().url({
    message: 'Avatar must be a valid URL'
  }).optional(),
  createdAt: z.date().optional(),
  updatedAt: z.date().optional()
});

export function validateUser (input) {
  return userSchema.safeParse(input);
}

export function validatePartialUser (input) {
  return userSchema.partial().safeParse(input);
}
