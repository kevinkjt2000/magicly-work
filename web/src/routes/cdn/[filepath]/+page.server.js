import { redirect } from '@sveltejs/kit';

export function load({ params }) {
	throw redirect(307, `https://d392i7ue2hox9z.cloudfront.net/${params.filepath}`);
}
