package tnklab.logic;

public class TwoPointPythagoreanTheorem {
	public static double getAnalyzeDate(double pointP_X,double pointQ_X,double pointP_Y,double pointQ_Y) {
		double ans = Math.sqrt(((pointP_X - pointQ_X) * (pointP_X - pointQ_X)) + ((pointP_Y - pointQ_Y) * (pointP_Y - pointQ_Y)));
		return ans;
	}

	public static double getAnalyzeDate(double pointP_X,double pointQ_X,double pointP_Y,double pointQ_Y,double pointP_Z,double pointQ_Z){
		double ans = Math.sqrt(((pointP_X - pointQ_X) * (pointP_X - pointQ_X)) + ((pointP_Y - pointQ_Y) * (pointP_Y - pointQ_Y)) + ((pointP_Z - pointQ_Z) * (pointP_Z - pointQ_Z)));
		return ans;
	}
}
