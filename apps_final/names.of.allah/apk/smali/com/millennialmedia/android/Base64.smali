.class Lcom/millennialmedia/android/Base64;
.super Ljava/lang/Object;


# static fields
.field private static final CA:[C

.field private static final IA:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v1, 0x0

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/android/Base64;->CA:[C

    const/16 v0, 0x100

    new-array v0, v0, [I

    sput-object v0, Lcom/millennialmedia/android/Base64;->IA:[I

    const/4 v2, -0x1

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    sget-object v0, Lcom/millennialmedia/android/Base64;->CA:[C

    array-length v2, v0

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_0

    sget-object v3, Lcom/millennialmedia/android/Base64;->IA:[I

    sget-object v4, Lcom/millennialmedia/android/Base64;->CA:[C

    aget-char v4, v4, v0

    aput v0, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/millennialmedia/android/Base64;->IA:[I

    const/16 v2, 0x3d

    aput v1, v0, v2

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final decode(Ljava/lang/String;)[B
    .locals 9

    const/4 v4, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    :goto_0
    if-nez v2, :cond_1

    new-array v0, v4, [B

    :goto_1
    return-object v0

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    move v1, v4

    move v0, v4

    :goto_2
    if-ge v1, v2, :cond_3

    sget-object v3, Lcom/millennialmedia/android/Base64;->IA:[I

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aget v3, v3, v5

    if-gez v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    sub-int v1, v2, v0

    rem-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    move v1, v2

    move v3, v4

    :cond_5
    :goto_3
    const/4 v5, 0x1

    if-le v1, v5, :cond_6

    sget-object v5, Lcom/millennialmedia/android/Base64;->IA:[I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aget v5, v5, v6

    if-gtz v5, :cond_6

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x3d

    if-ne v5, v6, :cond_5

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    sub-int v0, v2, v0

    mul-int/lit8 v0, v0, 0x6

    shr-int/lit8 v0, v0, 0x3

    sub-int v7, v0, v3

    new-array v3, v7, [B

    move v6, v4

    move v0, v4

    :goto_4
    if-ge v6, v7, :cond_a

    move v1, v4

    move v5, v0

    move v0, v4

    :goto_5
    const/4 v2, 0x4

    if-ge v0, v2, :cond_8

    sget-object v8, Lcom/millennialmedia/android/Base64;->IA:[I

    add-int/lit8 v2, v5, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aget v5, v8, v5

    if-ltz v5, :cond_7

    mul-int/lit8 v8, v0, 0x6

    rsub-int/lit8 v8, v8, 0x12

    shl-int/2addr v5, v8

    or-int/2addr v1, v5

    :goto_6
    add-int/lit8 v0, v0, 0x1

    move v5, v2

    goto :goto_5

    :cond_7
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_8
    add-int/lit8 v0, v6, 0x1

    shr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v3, v6

    if-ge v0, v7, :cond_9

    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v6, v1, 0x8

    int-to-byte v6, v6

    aput-byte v6, v3, v0

    if-ge v2, v7, :cond_b

    add-int/lit8 v0, v2, 0x1

    int-to-byte v1, v1

    aput-byte v1, v3, v2

    :cond_9
    :goto_7
    move v6, v0

    move v0, v5

    goto :goto_4

    :cond_a
    move-object v0, v3

    goto/16 :goto_1

    :cond_b
    move v0, v2

    goto :goto_7
.end method

.method public static final decode([B)[B
    .locals 9

    const/4 v4, 0x0

    array-length v2, p0

    move v1, v4

    move v0, v4

    :goto_0
    if-ge v1, v2, :cond_1

    sget-object v3, Lcom/millennialmedia/android/Base64;->IA:[I

    aget-byte v5, p0, v1

    and-int/lit16 v5, v5, 0xff

    aget v3, v3, v5

    if-gez v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sub-int v1, v2, v0

    rem-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_2
    move v1, v2

    move v3, v4

    :cond_3
    :goto_2
    const/4 v5, 0x1

    if-le v1, v5, :cond_4

    sget-object v5, Lcom/millennialmedia/android/Base64;->IA:[I

    add-int/lit8 v1, v1, -0x1

    aget-byte v6, p0, v1

    and-int/lit16 v6, v6, 0xff

    aget v5, v5, v6

    if-gtz v5, :cond_4

    aget-byte v5, p0, v1

    const/16 v6, 0x3d

    if-ne v5, v6, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    sub-int v0, v2, v0

    mul-int/lit8 v0, v0, 0x6

    shr-int/lit8 v0, v0, 0x3

    sub-int v7, v0, v3

    new-array v3, v7, [B

    move v6, v4

    move v0, v4

    :goto_3
    if-ge v6, v7, :cond_8

    move v1, v4

    move v5, v0

    move v0, v4

    :goto_4
    const/4 v2, 0x4

    if-ge v0, v2, :cond_6

    sget-object v8, Lcom/millennialmedia/android/Base64;->IA:[I

    add-int/lit8 v2, v5, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    aget v5, v8, v5

    if-ltz v5, :cond_5

    mul-int/lit8 v8, v0, 0x6

    rsub-int/lit8 v8, v8, 0x12

    shl-int/2addr v5, v8

    or-int/2addr v1, v5

    :goto_5
    add-int/lit8 v0, v0, 0x1

    move v5, v2

    goto :goto_4

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_6
    add-int/lit8 v0, v6, 0x1

    shr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v3, v6

    if-ge v0, v7, :cond_7

    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v6, v1, 0x8

    int-to-byte v6, v6

    aput-byte v6, v3, v0

    if-ge v2, v7, :cond_9

    add-int/lit8 v0, v2, 0x1

    int-to-byte v1, v1

    aput-byte v1, v3, v2

    :cond_7
    :goto_6
    move v6, v0

    move v0, v5

    goto :goto_3

    :cond_8
    move-object v0, v3

    goto :goto_1

    :cond_9
    move v0, v2

    goto :goto_6
.end method

.method public static final encodeToChar([BZ)[C
    .locals 14

    const/16 v3, 0x3d

    const/4 v13, 0x2

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    array-length v0, p0

    move v6, v0

    :goto_0
    if-nez v6, :cond_1

    new-array v0, v1, [C

    :goto_1
    return-object v0

    :cond_0
    move v6, v1

    goto :goto_0

    :cond_1
    div-int/lit8 v0, v6, 0x3

    mul-int/lit8 v7, v0, 0x3

    add-int/lit8 v0, v6, -0x1

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v2, v0, 0x2

    if-eqz p1, :cond_3

    add-int/lit8 v0, v2, -0x1

    div-int/lit8 v0, v0, 0x4c

    shl-int/lit8 v0, v0, 0x1

    :goto_2
    add-int v8, v2, v0

    new-array v4, v8, [C

    move v0, v1

    move v2, v1

    move v5, v1

    :cond_2
    :goto_3
    if-ge v5, v7, :cond_4

    add-int/lit8 v9, v5, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    add-int/lit8 v10, v9, 0x1

    aget-byte v9, p0, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v9, v5

    add-int/lit8 v5, v10, 0x1

    aget-byte v10, p0, v10

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v9, v10

    add-int/lit8 v10, v2, 0x1

    sget-object v11, Lcom/millennialmedia/android/Base64;->CA:[C

    ushr-int/lit8 v12, v9, 0x12

    and-int/lit8 v12, v12, 0x3f

    aget-char v11, v11, v12

    aput-char v11, v4, v2

    add-int/lit8 v2, v10, 0x1

    sget-object v11, Lcom/millennialmedia/android/Base64;->CA:[C

    ushr-int/lit8 v12, v9, 0xc

    and-int/lit8 v12, v12, 0x3f

    aget-char v11, v11, v12

    aput-char v11, v4, v10

    add-int/lit8 v10, v2, 0x1

    sget-object v11, Lcom/millennialmedia/android/Base64;->CA:[C

    ushr-int/lit8 v12, v9, 0x6

    and-int/lit8 v12, v12, 0x3f

    aget-char v11, v11, v12

    aput-char v11, v4, v2

    add-int/lit8 v2, v10, 0x1

    sget-object v11, Lcom/millennialmedia/android/Base64;->CA:[C

    and-int/lit8 v9, v9, 0x3f

    aget-char v9, v11, v9

    aput-char v9, v4, v10

    if-eqz p1, :cond_2

    add-int/lit8 v0, v0, 0x1

    const/16 v9, 0x13

    if-ne v0, v9, :cond_2

    add-int/lit8 v9, v8, -0x2

    if-ge v2, v9, :cond_2

    add-int/lit8 v9, v2, 0x1

    const/16 v0, 0xd

    aput-char v0, v4, v2

    add-int/lit8 v0, v9, 0x1

    const/16 v2, 0xa

    aput-char v2, v4, v9

    move v2, v0

    move v0, v1

    goto :goto_3

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    sub-int v0, v6, v7

    if-lez v0, :cond_6

    aget-byte v2, p0, v7

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0xa

    if-ne v0, v13, :cond_5

    add-int/lit8 v1, v6, -0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x2

    :cond_5
    or-int/2addr v1, v2

    add-int/lit8 v2, v8, -0x4

    sget-object v5, Lcom/millennialmedia/android/Base64;->CA:[C

    shr-int/lit8 v6, v1, 0xc

    aget-char v5, v5, v6

    aput-char v5, v4, v2

    add-int/lit8 v2, v8, -0x3

    sget-object v5, Lcom/millennialmedia/android/Base64;->CA:[C

    ushr-int/lit8 v6, v1, 0x6

    and-int/lit8 v6, v6, 0x3f

    aget-char v5, v5, v6

    aput-char v5, v4, v2

    add-int/lit8 v2, v8, -0x2

    if-ne v0, v13, :cond_7

    sget-object v0, Lcom/millennialmedia/android/Base64;->CA:[C

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    :goto_4
    aput-char v0, v4, v2

    add-int/lit8 v0, v8, -0x1

    aput-char v3, v4, v0

    :cond_6
    move-object v0, v4

    goto/16 :goto_1

    :cond_7
    move v0, v3

    goto :goto_4
.end method

.method public static final encodeToString([BZ)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/millennialmedia/android/Base64;->encodeToChar([BZ)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
