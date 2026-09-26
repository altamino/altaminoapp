package org.apache.commons.compress.archivers.tar;

import com.google.firebase.sessions.settings.c;
import com.narvii.modulization.ConfigApiRequestHelper;
import com.narvii.util.ws.WsMessage;
import io.agora.rtc.Constants;
import java.io.File;
import java.io.IOException;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.apache.commons.compress.archivers.ArchiveEntry;
import org.apache.commons.compress.archivers.zip.ZipEncoding;
import org.apache.commons.compress.utils.ArchiveUtils;

/* JADX INFO: loaded from: classes8.dex */
public class TarArchiveEntry implements ArchiveEntry, TarConstants {
    public static final int DEFAULT_DIR_MODE = 16877;
    public static final int DEFAULT_FILE_MODE = 33188;
    private static final TarArchiveEntry[] EMPTY_TAR_ARCHIVE_ENTRIES = new TarArchiveEntry[0];
    public static final int MAX_NAMELEN = 31;
    public static final int MILLIS_PER_SECOND = 1000;
    private boolean checkSumOK;
    private int devMajor;
    private int devMinor;
    private final Map<String, String> extraPaxHeaders;
    private final File file;
    private long groupId;
    private String groupName;
    private boolean isExtended;
    private byte linkFlag;
    private String linkName;
    private String magic;
    private long modTime;
    private int mode;
    private String name;
    private boolean paxGNUSparse;
    private final boolean preserveAbsolutePath;
    private long realSize;
    private long size;
    private boolean starSparse;
    private long userId;
    private String userName;
    private String version;

    private TarArchiveEntry(boolean z6) {
        this.name = "";
        this.userId = 0L;
        this.groupId = 0L;
        this.size = 0L;
        this.linkName = "";
        this.magic = "ustar\u0000";
        this.version = TarConstants.VERSION_POSIX;
        this.groupName = "";
        this.devMajor = 0;
        this.devMinor = 0;
        this.extraPaxHeaders = new HashMap();
        String property = System.getProperty("user.name", "");
        this.userName = property.length() > 31 ? property.substring(0, 31) : property;
        this.file = null;
        this.preserveAbsolutePath = z6;
    }

    private static String normalizeFileName(String str, boolean z6) {
        String lowerCase;
        int iIndexOf;
        if (!z6 && (lowerCase = System.getProperty("os.name").toLowerCase(Locale.ENGLISH)) != null) {
            if (lowerCase.startsWith("windows")) {
                if (str.length() > 2) {
                    char cCharAt = str.charAt(0);
                    if (str.charAt(1) == ':' && ((cCharAt >= 'a' && cCharAt <= 'z') || (cCharAt >= 'A' && cCharAt <= 'Z'))) {
                        str = str.substring(2);
                    }
                }
            } else if (lowerCase.contains("netware") && (iIndexOf = str.indexOf(58)) != -1) {
                str = str.substring(iIndexOf + 1);
            }
        }
        String strReplace = str.replace(File.separatorChar, '/');
        while (!z6 && strReplace.startsWith(c.FORWARD_SLASH_STRING)) {
            strReplace = strReplace.substring(1);
        }
        return strReplace;
    }

    private void processPaxHeader(String str, String str2) {
        processPaxHeader(str, str2, this.extraPaxHeaders);
    }

    public boolean equals(TarArchiveEntry tarArchiveEntry) {
        return tarArchiveEntry != null && getName().equals(tarArchiveEntry.getName());
    }

    void fillGNUSparse0xData(Map<String, String> map) {
        this.paxGNUSparse = true;
        this.realSize = Integer.parseInt(map.get("GNU.sparse.size"));
        if (map.containsKey("GNU.sparse.name")) {
            this.name = map.get("GNU.sparse.name");
        }
    }

    void fillGNUSparse1xData(Map<String, String> map) {
        this.paxGNUSparse = true;
        this.realSize = Integer.parseInt(map.get("GNU.sparse.realsize"));
        this.name = map.get("GNU.sparse.name");
    }

    void fillStarSparseData(Map<String, String> map) {
        this.starSparse = true;
        if (map.containsKey("SCHILY.realsize")) {
            this.realSize = Long.parseLong(map.get("SCHILY.realsize"));
        }
    }

    public int getDevMajor() {
        return this.devMajor;
    }

    public int getDevMinor() {
        return this.devMinor;
    }

    public File getFile() {
        return this.file;
    }

    @Deprecated
    public int getGroupId() {
        return (int) this.groupId;
    }

    public String getGroupName() {
        return this.groupName;
    }

    public String getLinkName() {
        return this.linkName;
    }

    public long getLongGroupId() {
        return this.groupId;
    }

    public long getLongUserId() {
        return this.userId;
    }

    public int getMode() {
        return this.mode;
    }

    @Override // org.apache.commons.compress.archivers.ArchiveEntry
    public String getName() {
        return this.name;
    }

    public long getRealSize() {
        return this.realSize;
    }

    @Override // org.apache.commons.compress.archivers.ArchiveEntry
    public long getSize() {
        return this.size;
    }

    @Deprecated
    public int getUserId() {
        return (int) this.userId;
    }

    public String getUserName() {
        return this.userName;
    }

    public boolean isBlockDevice() {
        return this.linkFlag == 52;
    }

    public boolean isCharacterDevice() {
        return this.linkFlag == 51;
    }

    public boolean isCheckSumOK() {
        return this.checkSumOK;
    }

    public boolean isExtended() {
        return this.isExtended;
    }

    public boolean isFIFO() {
        return this.linkFlag == 54;
    }

    public boolean isGNULongLinkEntry() {
        return this.linkFlag == 75;
    }

    public boolean isGNULongNameEntry() {
        return this.linkFlag == 76;
    }

    public boolean isGlobalPaxHeader() {
        return this.linkFlag == 103;
    }

    public boolean isLink() {
        return this.linkFlag == 49;
    }

    public boolean isOldGNUSparse() {
        return this.linkFlag == 83;
    }

    public boolean isPaxGNUSparse() {
        return this.paxGNUSparse;
    }

    public boolean isPaxHeader() {
        byte b7 = this.linkFlag;
        return b7 == 120 || b7 == 88;
    }

    public boolean isStarSparse() {
        return this.starSparse;
    }

    public boolean isSymbolicLink() {
        return this.linkFlag == 50;
    }

    public void parseTarHeader(byte[] bArr) {
        try {
            try {
                parseTarHeader(bArr, TarUtils.DEFAULT_ENCODING);
            } catch (IOException unused) {
                parseTarHeader(bArr, TarUtils.DEFAULT_ENCODING, true);
            }
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    public void setGroupId(long j6) {
        this.groupId = j6;
    }

    public void setGroupName(String str) {
        this.groupName = str;
    }

    public void setLinkName(String str) {
        this.linkName = str;
    }

    public void setModTime(long j6) {
        this.modTime = j6 / 1000;
    }

    public void setMode(int i10) {
        this.mode = i10;
    }

    public void setUserId(long j6) {
        this.userId = j6;
    }

    public void setUserName(String str) {
        this.userName = str;
    }

    public void writeEntryHeader(byte[] bArr) {
        try {
            try {
                writeEntryHeader(bArr, TarUtils.DEFAULT_ENCODING, false);
            } catch (IOException unused) {
                writeEntryHeader(bArr, TarUtils.FALLBACK_ENCODING, false);
            }
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private int evaluateType(byte[] bArr) {
        if (ArchiveUtils.matchAsciiBuffer(TarConstants.MAGIC_GNU, bArr, 257, 6)) {
            return 2;
        }
        if (ArchiveUtils.matchAsciiBuffer("ustar\u0000", bArr, 257, 6)) {
            return ArchiveUtils.matchAsciiBuffer(TarConstants.MAGIC_XSTAR, bArr, 508, 4) ? 4 : 3;
        }
        return 0;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private void processPaxHeader(String str, String str2, Map<String, String> map) {
        str.hashCode();
        byte b7 = -1;
        switch (str.hashCode()) {
            case -1916861932:
                if (str.equals("SCHILY.devmajor")) {
                    b7 = 0;
                }
                break;
            case -1916619760:
                if (str.equals("SCHILY.devminor")) {
                    b7 = 1;
                }
                break;
            case -277496563:
                if (str.equals("GNU.sparse.realsize")) {
                    b7 = 2;
                }
                break;
            case -160380561:
                if (str.equals("GNU.sparse.size")) {
                    b7 = 3;
                }
                break;
            case 102338:
                if (str.equals("gid")) {
                    b7 = 4;
                }
                break;
            case 115792:
                if (str.equals("uid")) {
                    b7 = 5;
                }
                break;
            case 3433509:
                if (str.equals(ConfigApiRequestHelper.PATH_KEY)) {
                    b7 = 6;
                }
                break;
            case 3530753:
                if (str.equals("size")) {
                    b7 = 7;
                }
                break;
            case 98496370:
                if (str.equals("gname")) {
                    b7 = 8;
                }
                break;
            case 104223930:
                if (str.equals("mtime")) {
                    b7 = 9;
                }
                break;
            case 111425664:
                if (str.equals("uname")) {
                    b7 = 10;
                }
                break;
            case 530706950:
                if (str.equals("SCHILY.filetype")) {
                    b7 = com.google.common.base.c.VT;
                }
                break;
            case 1195018015:
                if (str.equals("linkpath")) {
                    b7 = com.google.common.base.c.FF;
                }
                break;
        }
        switch (b7) {
            case 0:
                setDevMajor(Integer.parseInt(str2));
                break;
            case 1:
                setDevMinor(Integer.parseInt(str2));
                break;
            case 2:
                fillGNUSparse1xData(map);
                break;
            case 3:
                fillGNUSparse0xData(map);
                break;
            case 4:
                setGroupId(Long.parseLong(str2));
                break;
            case 5:
                setUserId(Long.parseLong(str2));
                break;
            case 6:
                setName(str2);
                break;
            case 7:
                setSize(Long.parseLong(str2));
                break;
            case 8:
                setGroupName(str2);
                break;
            case 9:
                setModTime((long) (Double.parseDouble(str2) * 1000.0d));
                break;
            case 10:
                setUserName(str2);
                break;
            case 11:
                if ("sparse".equals(str2)) {
                    fillStarSparseData(map);
                }
                break;
            case 12:
                setLinkName(str2);
                break;
            default:
                this.extraPaxHeaders.put(str, str2);
                break;
        }
    }

    private int writeEntryHeaderField(long j6, byte[] bArr, int i10, int i11, boolean z6) {
        return (z6 || (j6 >= 0 && j6 < (1 << ((i11 + (-1)) * 3)))) ? TarUtils.formatLongOctalOrBinaryBytes(j6, bArr, i10, i11) : TarUtils.formatLongOctalBytes(0L, bArr, i10, i11);
    }

    public void clearExtraPaxHeaders() {
        this.extraPaxHeaders.clear();
    }

    public boolean equals(Object obj) {
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return equals((TarArchiveEntry) obj);
    }

    public TarArchiveEntry[] getDirectoryEntries() {
        File file = this.file;
        if (file == null || !file.isDirectory()) {
            return EMPTY_TAR_ARCHIVE_ENTRIES;
        }
        String[] list = this.file.list();
        if (list == null) {
            return EMPTY_TAR_ARCHIVE_ENTRIES;
        }
        int length = list.length;
        TarArchiveEntry[] tarArchiveEntryArr = new TarArchiveEntry[length];
        for (int i10 = 0; i10 < length; i10++) {
            tarArchiveEntryArr[i10] = new TarArchiveEntry(new File(this.file, list[i10]));
        }
        return tarArchiveEntryArr;
    }

    public String getExtraPaxHeader(String str) {
        return this.extraPaxHeaders.get(str);
    }

    public Map<String, String> getExtraPaxHeaders() {
        return Collections.unmodifiableMap(this.extraPaxHeaders);
    }

    public Date getModTime() {
        return new Date(this.modTime * 1000);
    }

    @Override // org.apache.commons.compress.archivers.ArchiveEntry
    public boolean isDirectory() {
        File file = this.file;
        if (file != null) {
            return file.isDirectory();
        }
        if (this.linkFlag == 53) {
            return true;
        }
        return (isPaxHeader() || isGlobalPaxHeader() || !getName().endsWith(c.FORWARD_SLASH_STRING)) ? false : true;
    }

    public boolean isFile() {
        File file = this.file;
        if (file != null) {
            return file.isFile();
        }
        byte b7 = this.linkFlag;
        if (b7 == 0 || b7 == 48) {
            return true;
        }
        return !getName().endsWith(c.FORWARD_SLASH_STRING);
    }

    public void setDevMajor(int i10) {
        if (i10 >= 0) {
            this.devMajor = i10;
            return;
        }
        throw new IllegalArgumentException("Major device number is out of range: " + i10);
    }

    public void setDevMinor(int i10) {
        if (i10 >= 0) {
            this.devMinor = i10;
            return;
        }
        throw new IllegalArgumentException("Minor device number is out of range: " + i10);
    }

    public void setGroupId(int i10) {
        setGroupId(i10);
    }

    public void setModTime(Date date) {
        this.modTime = date.getTime() / 1000;
    }

    public void setName(String str) {
        this.name = normalizeFileName(str, this.preserveAbsolutePath);
    }

    public void setSize(long j6) {
        if (j6 >= 0) {
            this.size = j6;
            return;
        }
        throw new IllegalArgumentException("Size is out of range: " + j6);
    }

    public void setUserId(int i10) {
        setUserId(i10);
    }

    public void addPaxHeader(String str, String str2) {
        processPaxHeader(str, str2);
    }

    @Override // org.apache.commons.compress.archivers.ArchiveEntry
    public Date getLastModifiedDate() {
        return getModTime();
    }

    public int hashCode() {
        return getName().hashCode();
    }

    public boolean isDescendent(TarArchiveEntry tarArchiveEntry) {
        return tarArchiveEntry.getName().startsWith(getName());
    }

    public boolean isGNUSparse() {
        if (!isOldGNUSparse() && !isPaxGNUSparse()) {
            return false;
        }
        return true;
    }

    public boolean isSparse() {
        if (!isGNUSparse() && !isStarSparse()) {
            return false;
        }
        return true;
    }

    public void setIds(int i10, int i11) {
        setUserId(i10);
        setGroupId(i11);
    }

    public void setNames(String str, String str2) {
        setUserName(str);
        setGroupName(str2);
    }

    void updateEntryFromPaxHeaders(Map<String, String> map) {
        for (Map.Entry<String, String> entry : map.entrySet()) {
            processPaxHeader(entry.getKey(), entry.getValue(), map);
        }
    }

    public void parseTarHeader(byte[] bArr, ZipEncoding zipEncoding) throws IOException {
        parseTarHeader(bArr, zipEncoding, false);
    }

    public void writeEntryHeader(byte[] bArr, ZipEncoding zipEncoding, boolean z6) throws IOException {
        int iWriteEntryHeaderField = writeEntryHeaderField(this.modTime, bArr, writeEntryHeaderField(this.size, bArr, writeEntryHeaderField(this.groupId, bArr, writeEntryHeaderField(this.userId, bArr, writeEntryHeaderField(this.mode, bArr, TarUtils.formatNameBytes(this.name, bArr, 0, 100, zipEncoding), 8, z6), 8, z6), 8, z6), 12, z6), 12, z6);
        int i10 = 0;
        int i11 = iWriteEntryHeaderField;
        while (i10 < 8) {
            bArr[i11] = 32;
            i10++;
            i11++;
        }
        bArr[i11] = this.linkFlag;
        for (int iWriteEntryHeaderField2 = writeEntryHeaderField(this.devMinor, bArr, writeEntryHeaderField(this.devMajor, bArr, TarUtils.formatNameBytes(this.groupName, bArr, TarUtils.formatNameBytes(this.userName, bArr, TarUtils.formatNameBytes(this.version, bArr, TarUtils.formatNameBytes(this.magic, bArr, TarUtils.formatNameBytes(this.linkName, bArr, i11 + 1, 100, zipEncoding), 6), 2), 32, zipEncoding), 32, zipEncoding), 8, z6), 8, z6); iWriteEntryHeaderField2 < bArr.length; iWriteEntryHeaderField2++) {
            bArr[iWriteEntryHeaderField2] = 0;
        }
        TarUtils.formatCheckSumOctalBytes(TarUtils.computeCheckSum(bArr), bArr, iWriteEntryHeaderField, 8);
    }

    private void parseTarHeader(byte[] bArr, ZipEncoding zipEncoding, boolean z6) throws IOException {
        String name;
        String name2;
        String name3;
        String name4;
        String name5;
        String name6;
        if (z6) {
            name = TarUtils.parseName(bArr, 0, 100);
        } else {
            name = TarUtils.parseName(bArr, 0, 100, zipEncoding);
        }
        this.name = name;
        this.mode = (int) TarUtils.parseOctalOrBinary(bArr, 100, 8);
        this.userId = (int) TarUtils.parseOctalOrBinary(bArr, 108, 8);
        this.groupId = (int) TarUtils.parseOctalOrBinary(bArr, 116, 8);
        this.size = TarUtils.parseOctalOrBinary(bArr, 124, 12);
        this.modTime = TarUtils.parseOctalOrBinary(bArr, WsMessage.THREAD_WAIT_LIST_JOIN_CANCEL_REQUEST, 12);
        this.checkSumOK = TarUtils.verifyCheckSum(bArr);
        this.linkFlag = bArr[156];
        if (z6) {
            name2 = TarUtils.parseName(bArr, Constants.ERR_MODULE_NOT_FOUND, 100);
        } else {
            name2 = TarUtils.parseName(bArr, Constants.ERR_MODULE_NOT_FOUND, 100, zipEncoding);
        }
        this.linkName = name2;
        this.magic = TarUtils.parseName(bArr, 257, 6);
        this.version = TarUtils.parseName(bArr, TarConstants.VERSION_OFFSET, 2);
        if (z6) {
            name3 = TarUtils.parseName(bArr, 265, 32);
        } else {
            name3 = TarUtils.parseName(bArr, 265, 32, zipEncoding);
        }
        this.userName = name3;
        if (z6) {
            name4 = TarUtils.parseName(bArr, 297, 32);
        } else {
            name4 = TarUtils.parseName(bArr, 297, 32, zipEncoding);
        }
        this.groupName = name4;
        byte b7 = this.linkFlag;
        if (b7 == 51 || b7 == 52) {
            this.devMajor = (int) TarUtils.parseOctalOrBinary(bArr, 329, 8);
            this.devMinor = (int) TarUtils.parseOctalOrBinary(bArr, 337, 8);
        }
        int iEvaluateType = evaluateType(bArr);
        if (iEvaluateType == 2) {
            this.isExtended = TarUtils.parseBoolean(bArr, 482);
            this.realSize = TarUtils.parseOctal(bArr, 483, 12);
            return;
        }
        if (iEvaluateType != 4) {
            if (z6) {
                name6 = TarUtils.parseName(bArr, 345, 155);
            } else {
                name6 = TarUtils.parseName(bArr, 345, 155, zipEncoding);
            }
            if (isDirectory() && !this.name.endsWith(c.FORWARD_SLASH_STRING)) {
                this.name += c.FORWARD_SLASH_STRING;
            }
            if (name6.length() > 0) {
                this.name = name6 + c.FORWARD_SLASH_STRING + this.name;
                return;
            }
            return;
        }
        if (z6) {
            name5 = TarUtils.parseName(bArr, 345, 131);
        } else {
            name5 = TarUtils.parseName(bArr, 345, 131, zipEncoding);
        }
        if (name5.length() > 0) {
            this.name = name5 + c.FORWARD_SLASH_STRING + this.name;
        }
    }

    public TarArchiveEntry(String str) {
        this(str, false);
    }

    public TarArchiveEntry(String str, boolean z6) {
        this(z6);
        String strNormalizeFileName = normalizeFileName(str, z6);
        boolean zEndsWith = strNormalizeFileName.endsWith(c.FORWARD_SLASH_STRING);
        this.name = strNormalizeFileName;
        this.mode = zEndsWith ? DEFAULT_DIR_MODE : DEFAULT_FILE_MODE;
        this.linkFlag = zEndsWith ? TarConstants.LF_DIR : TarConstants.LF_NORMAL;
        this.modTime = new Date().getTime() / 1000;
        this.userName = "";
    }

    public TarArchiveEntry(String str, byte b7) {
        this(str, b7, false);
    }

    public TarArchiveEntry(String str, byte b7, boolean z6) {
        this(str, z6);
        this.linkFlag = b7;
        if (b7 == 76) {
            this.magic = TarConstants.MAGIC_GNU;
            this.version = TarConstants.VERSION_GNU_SPACE;
        }
    }

    public TarArchiveEntry(File file) {
        this(file, file.getPath());
    }

    public TarArchiveEntry(File file, String str) {
        this.name = "";
        this.userId = 0L;
        this.groupId = 0L;
        this.size = 0L;
        this.linkName = "";
        this.magic = "ustar\u0000";
        this.version = TarConstants.VERSION_POSIX;
        this.groupName = "";
        this.devMajor = 0;
        this.devMinor = 0;
        this.extraPaxHeaders = new HashMap();
        String strNormalizeFileName = normalizeFileName(str, false);
        this.file = file;
        if (file.isDirectory()) {
            this.mode = DEFAULT_DIR_MODE;
            this.linkFlag = TarConstants.LF_DIR;
            int length = strNormalizeFileName.length();
            if (length == 0 || strNormalizeFileName.charAt(length - 1) != '/') {
                this.name = strNormalizeFileName + c.FORWARD_SLASH_STRING;
            } else {
                this.name = strNormalizeFileName;
            }
        } else {
            this.mode = DEFAULT_FILE_MODE;
            this.linkFlag = TarConstants.LF_NORMAL;
            this.size = file.length();
            this.name = strNormalizeFileName;
        }
        this.modTime = file.lastModified() / 1000;
        this.userName = "";
        this.preserveAbsolutePath = false;
    }

    public TarArchiveEntry(byte[] bArr) {
        this(false);
        parseTarHeader(bArr);
    }

    public TarArchiveEntry(byte[] bArr, ZipEncoding zipEncoding) throws IOException {
        this(false);
        parseTarHeader(bArr, zipEncoding);
    }
}
