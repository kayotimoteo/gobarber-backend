import { Router } from 'express';

import ForgotPasswordControler from '../controllers/ForgotPasswordController';
import ResetPasswordController from '../controllers/ResetPasswordController';

const passwordRouter = Router();
const forgotPasswordControler = new ForgotPasswordControler();
const resetPasswordController = new ResetPasswordController();

passwordRouter.post('/forgot', forgotPasswordControler.create);
passwordRouter.post('/reset', resetPasswordController.create);

export default passwordRouter;
