
CREATE POLICY "Officers can insert notifications"
ON public.notifications
FOR INSERT
TO authenticated
WITH CHECK (has_role(auth.uid(), 'officer'::app_role));
