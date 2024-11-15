package about.memberData;

public class AboutMemberVO {
	private int aIdx;
	private String aMid;
	private String aPwd;
	private String aNickName;
	private String aPhoto;
	private String aJoinD;
	private String aVisitD;
	private String aCur;
	private String aAnl;
	private String aAddress;
	private String aTel;
	private String aVisitCnt; 
	private int aLevel;

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
	
	public String getaCur() {
		return aCur;
	}
	
	public void setaCur(String aCur) {
		this.aCur = aCur;
	}
	
	public String getaAnl() {
		return aAnl;
	}
	
	public void setaAnl(String aAnl) {
		this.aAnl = aAnl;
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
	
	public String getaVisitCnt() {
		return aVisitCnt;
	}
	
	public void setaVisitCnt(String aVisitCnt) {
		this.aVisitCnt = aVisitCnt;
	}
	
	public int getaLevel() {
		return aLevel;
	}
	
	public void setaLevel(int aLevel) {
		this.aLevel = aLevel;
	}
	
	@Override
	public String toString() {
		return "aboutVO [aIdx=" + aIdx + ", aMid=" + aMid + ", aPwd=" + aPwd + ", aNickName=" + aNickName + ", aPhoto="
				+ aPhoto + ", aJoinD=" + aJoinD + ", aVisitD=" + aVisitD + ", aCur=" + aCur + ", aAnl=" + aAnl + ", aAddress="
				+ aAddress + ", aTel=" + aTel + ", aVisitCnt=" + aVisitCnt + ", aLevel=" + aLevel + "]";
	}
 
}
