.class public Lorg/codehaus/jackson/smile/SmileBufferRecycler;
.super Ljava/lang/Object;
.source "SmileBufferRecycler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final DEFAULT_NAME_BUFFER_LENGTH:I = 0x40

.field public static final DEFAULT_STRING_VALUE_BUFFER_LENGTH:I = 0x40


# instance fields
.field protected _seenNamesBuffer:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field protected _seenStringValuesBuffer:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    .local p0, "this":Lorg/codehaus/jackson/smile/SmileBufferRecycler;, "Lorg/codehaus/jackson/smile/SmileBufferRecycler<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public allocSeenNamesBuffer()[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .prologue
    .line 26
    .local p0, "this":Lorg/codehaus/jackson/smile/SmileBufferRecycler;, "Lorg/codehaus/jackson/smile/SmileBufferRecycler<TT;>;"
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileBufferRecycler;->_seenNamesBuffer:[Ljava/lang/Object;

    .line 27
    .local v0, "result":[Ljava/lang/Object;, "[TT;"
    if-eqz v0, :cond_0

    .line 29
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codehaus/jackson/smile/SmileBufferRecycler;->_seenNamesBuffer:[Ljava/lang/Object;

    .line 32
    :cond_0
    return-object v0
.end method

.method public allocSeenStringValuesBuffer()[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lorg/codehaus/jackson/smile/SmileBufferRecycler;, "Lorg/codehaus/jackson/smile/SmileBufferRecycler<TT;>;"
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileBufferRecycler;->_seenStringValuesBuffer:[Ljava/lang/Object;

    .line 39
    .local v0, "result":[Ljava/lang/Object;, "[TT;"
    if-eqz v0, :cond_0

    .line 40
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codehaus/jackson/smile/SmileBufferRecycler;->_seenStringValuesBuffer:[Ljava/lang/Object;

    .line 43
    :cond_0
    return-object v0
.end method

.method public releaseSeenNamesBuffer([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lorg/codehaus/jackson/smile/SmileBufferRecycler;, "Lorg/codehaus/jackson/smile/SmileBufferRecycler<TT;>;"
    .local p1, "buffer":[Ljava/lang/Object;, "[TT;"
    iput-object p1, p0, Lorg/codehaus/jackson/smile/SmileBufferRecycler;->_seenNamesBuffer:[Ljava/lang/Object;

    .line 48
    return-void
.end method

.method public releaseSeenStringValuesBuffer([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lorg/codehaus/jackson/smile/SmileBufferRecycler;, "Lorg/codehaus/jackson/smile/SmileBufferRecycler<TT;>;"
    .local p1, "buffer":[Ljava/lang/Object;, "[TT;"
    iput-object p1, p0, Lorg/codehaus/jackson/smile/SmileBufferRecycler;->_seenStringValuesBuffer:[Ljava/lang/Object;

    .line 52
    return-void
.end method
