package me.kiip.internal.d;

import com.zeptolab.ctr.scorer.GoogleScorer;
import java.io.UnsupportedEncodingException;

public final class b {
    private static final byte[] a;

    static {
        a = new byte[]{(byte) 65, (byte) 66, (byte) 67, (byte) 68, (byte) 69, (byte) 70, (byte) 71, (byte) 72, (byte) 73, (byte) 74, (byte) 75, (byte) 76, (byte) 77, (byte) 78, (byte) 79, (byte) 80, (byte) 81, (byte) 82, (byte) 83, (byte) 84, (byte) 85, (byte) 86, (byte) 87, (byte) 88, (byte) 89, (byte) 90, (byte) 97, (byte) 98, (byte) 99, (byte) 100, (byte) 101, (byte) 102, (byte) 103, (byte) 104, (byte) 105, (byte) 106, (byte) 107, (byte) 108, (byte) 109, (byte) 110, (byte) 111, (byte) 112, (byte) 113, (byte) 114, (byte) 115, (byte) 116, (byte) 117, (byte) 118, (byte) 119, (byte) 120, (byte) 121, (byte) 122, (byte) 48, (byte) 49, (byte) 50, (byte) 51, (byte) 52, (byte) 53, (byte) 54, (byte) 55, (byte) 56, (byte) 57, (byte) 43, (byte) 47};
    }

    public static byte[] a(byte[] bArr) {
        return a(bArr, bArr.length);
    }

    public static byte[] a(byte[] bArr, int i) {
        int i2 = (i / 4) * 3;
        if (i2 == 0) {
            return h.a;
        }
        Object obj = new Object[i2];
        i2 = 0;
        while (true) {
            byte b = bArr[i - 1];
            if (b == (byte) 10 || b == (byte) 13 || b == (byte) 32 || b == (byte) 9 || b != (byte) 61) {
                break;
            }
            i2++;
            i--;
        }
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        while (i3 < i) {
            int i7;
            b = bArr[i3];
            if (b == (byte) 10 || b == (byte) 13 || b == (byte) 32) {
                i7 = i4;
                i4 = i6;
                i6 = i5;
            } else if (b == (byte) 9) {
                i7 = i4;
                i4 = i6;
                i6 = i5;
            } else {
                if (b >= (byte) 65 && b <= (byte) 90) {
                    i7 = b - 65;
                } else if (b >= (byte) 97 && b <= (byte) 122) {
                    i7 = b - 71;
                } else if (b >= (byte) 48 && b <= (byte) 57) {
                    i7 = b + 4;
                } else if (b == (byte) 43) {
                    i7 = 62;
                } else if (b != (byte) 47) {
                    return null;
                } else {
                    i7 = 63;
                }
                i4 = (i4 << 6) | ((byte) i7);
                if (i5 % 4 == 3) {
                    i7 = i6 + 1;
                    obj[i6] = (byte) (i4 >> 16);
                    i6 = i7 + 1;
                    obj[i7] = (byte) (i4 >> 8);
                    i7 = i6 + 1;
                    obj[i6] = (byte) i4;
                } else {
                    i7 = i6;
                }
                i6 = i5 + 1;
                int i8 = i4;
                i4 = i7;
                i7 = i8;
            }
            i3++;
            i5 = i6;
            i6 = i4;
            i4 = i7;
        }
        if (i2 > 0) {
            i4 <<= i2 * 6;
            i7 = i6 + 1;
            obj[i6] = (byte) (i4 >> 16);
            if (i2 == 1) {
                i6 = i7 + 1;
                obj[i7] = (byte) (i4 >> 8);
            } else {
                i6 = i7;
            }
        }
        Object obj2 = new Object[i6];
        System.arraycopy(obj, 0, obj2, 0, i6);
        return obj2;
    }

    public static String b_(byte[] bArr) {
        int i = 0;
        byte[] bArr2 = new byte[(((bArr.length + 2) * 4) / 3)];
        int length = bArr.length - bArr.length % 3;
        int i2 = 0;
        while (i2 < length) {
            int i3 = i + 1;
            bArr2[i] = a[(bArr[i2] & 255) >> 2];
            i = i3 + 1;
            bArr2[i3] = a[((bArr[i2] & 3) << 4) | ((bArr[i2 + 1] & 255) >> 4)];
            int i4 = i + 1;
            bArr2[i] = a[((bArr[i2 + 1] & 15) << 2) | ((bArr[i2 + 2] & 255) >> 6)];
            i3 = i4 + 1;
            bArr2[i4] = a[bArr[i2 + 2] & 63];
            i2 += 3;
            i = i3;
        }
        switch (bArr.length % 3) {
            case GoogleScorer.CLIENT_GAMES:
                i2 = i + 1;
                bArr2[i] = a[(bArr[length] & 255) >> 2];
                i = i2 + 1;
                bArr2[i2] = a[(bArr[length] & 3) << 4];
                i2 = i + 1;
                bArr2[i] = (byte) 61;
                i = i2 + 1;
                bArr2[i2] = (byte) 61;
                break;
            case GoogleScorer.CLIENT_PLUS:
                i2 = i + 1;
                bArr2[i] = a[(bArr[length] & 255) >> 2];
                i = i2 + 1;
                bArr2[i2] = a[((bArr[length] & 3) << 4) | ((bArr[length + 1] & 255) >> 4)];
                i2 = i + 1;
                bArr2[i] = a[(bArr[length + 1] & 15) << 2];
                i = i2 + 1;
                bArr2[i2] = (byte) 61;
                break;
        }
        try {
            return new String(bArr2, 0, i, "US-ASCII");
        } catch (UnsupportedEncodingException e) {
            throw new AssertionError(e);
        }
    }
}