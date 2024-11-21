package about.complaint;

public class ComplaintVO {
	private int cpIdx;
	private String cpCtg;
	private String cpContent;
	private int cpMemoIdx;
	private String cpMemoTitle;
	private String cpMid;
	private String cpDate;
	private int cpCnt;

	public int getCpIdx() {
		return cpIdx;
	}

	public void setCpIdx(int cpIdx) {
		this.cpIdx = cpIdx;
	}

	public String getCpCtg() {
		return cpCtg;
	}

	public void setCpCtg(String cpCtg) {
		this.cpCtg = cpCtg;
	}

	public String getCpContent() {
		return cpContent;
	}

	public void setCpContent(String cpContent) {
		this.cpContent = cpContent;
	}

	public int getCpMemoIdx() {
		return cpMemoIdx;
	}

	public void setCpMemoIdx(int cpMemoIdx) {
		this.cpMemoIdx = cpMemoIdx;
	}

	public String getCpMemoTitle() {
		return cpMemoTitle;
	}

	public void setCpMemoTitle(String cpMemoTitle) {
		this.cpMemoTitle = cpMemoTitle;
	}

	public String getCpMid() {
		return cpMid;
	}

	public void setCpMid(String cpMid) {
		this.cpMid = cpMid;
	}

	public String getCpDate() {
		return cpDate;
	}

	public void setCpDate(String cpDate) {
		this.cpDate = cpDate;
	}

	public int getCpCnt() {
		return cpCnt;
	}

	public void setCpCnt(int cpCnt) {
		this.cpCnt = cpCnt;
	}
	
	@Override
	public String toString() {
		return "ComplaintVO [cpIdx=" + cpIdx + ", cpCtg=" + cpCtg + ", cpContent=" + cpContent + ", cpMemoIdx=" + cpMemoIdx
				+ ", cpMemoTitle=" + cpMemoTitle + ", cpMid=" + cpMid + ", cpDate=" + cpDate + ", cpCnt=" + cpCnt + "]";
	}
}
