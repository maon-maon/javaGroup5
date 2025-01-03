package about.scribble;

public class ScribbleVO {
	private int inIdx;
	private String inMid;
	private String inTitle;
	private int inScore;
	private String inCtg;
	private String inPhoto;
	private String inDate;
	private String inOpen;
	private String inMark;
	private String inCpStt;
	private int inCpCnt;

	public int getInIdx() {
		return inIdx;
	}

	public void setInIdx(int inIdx) {
		this.inIdx = inIdx;
	}

	public String getInMid() {
		return inMid;
	}

	public void setInMid(String inMid) {
		this.inMid = inMid;
	}

	public String getInTitle() {
		return inTitle;
	}

	public void setInTitle(String inTitle) {
		this.inTitle = inTitle;
	}

	public int getInScore() {
		return inScore;
	}

	public void setInScore(int inScore) {
		this.inScore = inScore;
	}

	public String getInCtg() {
		return inCtg;
	}

	public void setInCtg(String inCtg) {
		this.inCtg = inCtg;
	}

	public String getInPhoto() {
		return inPhoto;
	}

	public void setInPhoto(String inPhoto) {
		this.inPhoto = inPhoto;
	}

	public String getInDate() {
		return inDate;
	}

	public void setInDate(String inDate) {
		this.inDate = inDate;
	}

	public String getInOpen() {
		return inOpen;
	}

	public void setInOpen(String inOpen) {
		this.inOpen = inOpen;
	}

	public String getInMark() {
		return inMark;
	}

	public void setInMark(String inMark) {
		this.inMark = inMark;
	}

	public String getInCpStt() {
		return inCpStt;
	}

	public void setInCpStt(String inCpStt) {
		this.inCpStt = inCpStt;
	}

	public int getInCpCnt() {
		return inCpCnt;
	}

	public void setInCpCnt(int inCpCnt) {
		this.inCpCnt = inCpCnt;
	}

	@Override
	public String toString() {
		return "ScribbleVO [inIdx=" + inIdx + ", inMid=" + inMid + ", inTitle=" + inTitle + ", inScore=" + inScore
				+ ", inCtg=" + inCtg + ", inPhoto=" + inPhoto + ", inDate=" + inDate + ", inOpen=" + inOpen + ", inMark="
				+ inMark + ", inCpStt=" + inCpStt + ", inCpCnt=" + inCpCnt + "]";
	}

}
