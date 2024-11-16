package about.memberData;

public class AboutMemberVO {
	private int aIdx;
	private String aMid;
	private String aPwd;
	private String aPwdHint;
	private String aPwdAns;
	private String aNickName;
	private String aPhoto;
	private int aLevel;
	private String aAnl;
	private String aJoinD;
	private String aVisitD;
	private int aVisitCnt; 
	private String aAddress;
	private String aTel;

	public int getaIdx() {
		return aIdx;
	}

	public void setaIdx(int aIdx) {
		this.aIdx = aIdx;
	}

	public String getaMid() {
		return aMid;
	}

	public void setaMid(String aMid) {
		this.aMid = aMid;
	}

	public String getaPwd() {
		return aPwd;
	}

	public void setaPwd(String aPwd) {
		this.aPwd = aPwd;
	}

	public String getaPwdHint() {
		return aPwdHint;
	}

	public void setaPwdHint(String aPwdHint) {
		this.aPwdHint = aPwdHint;
	}

	public String getaPwdAns() {
		return aPwdAns;
	}

	public void setaPwdAns(String aPwdAns) {
		this.aPwdAns = aPwdAns;
	}

	public String getaNickName() {
		return aNickName;
	}

	public void setaNickName(String aNickName) {
		this.aNickName = aNickName;
	}

	public String getaPhoto() {
		return aPhoto;
	}

	public void setaPhoto(String aPhoto) {
		this.aPhoto = aPhoto;
	}

	public int getaLevel() {
		return aLevel;
	}

	public void setaLevel(int aLevel) {
		this.aLevel = aLevel;
	}

	public String getaAnl() {
		return aAnl;
	}

	public void setaAnl(String aAnl) {
		this.aAnl = aAnl;
	}

	public String getaJoinD() {
		return aJoinD;
	}

	public void setaJoinD(String aJoinD) {
		this.aJoinD = aJoinD;
	}

	public String getaVisitD() {
		return aVisitD;
	}

	public void setaVisitD(String aVisitD) {
		this.aVisitD = aVisitD;
	}

	public int getaVisitCnt() {
		return aVisitCnt;
	}

	public void setaVisitCnt(int aVisitCnt) {
		this.aVisitCnt = aVisitCnt;
	}

	public String getaAddress() {
		return aAddress;
	}

	public void setaAddress(String aAddress) {
		this.aAddress = aAddress;
	}

	public String getaTel() {
		return aTel;
	}

	public void setaTel(String aTel) {
		this.aTel = aTel;
	}

	@Override
	public String toString() {
		return "AboutMemberVO [aIdx=" + aIdx + ", aMid=" + aMid + ", aPwd=" + aPwd + ", aPwdHint=" + aPwdHint + ", aPwdAns="
				+ aPwdAns + ", aNickName=" + aNickName + ", aPhoto=" + aPhoto + ", aLevel=" + aLevel + ", aAnl=" + aAnl
				+ ", aJoinD=" + aJoinD + ", aVisitD=" + aVisitD + ", aVisitCnt=" + aVisitCnt + ", aAddress=" + aAddress
				+ ", aTel=" + aTel + "]";
	}
	
}
