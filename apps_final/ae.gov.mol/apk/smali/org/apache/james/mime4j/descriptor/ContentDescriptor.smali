.class public interface abstract Lorg/apache/james/mime4j/descriptor/ContentDescriptor;
.super Ljava/lang/Object;
.source "ContentDescriptor.java"


# virtual methods
.method public abstract getCharset()Ljava/lang/String;
.end method

.method public abstract getContentLength()J
.end method

.method public abstract getContentTypeParameters()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMediaType()Ljava/lang/String;
.end method

.method public abstract getMimeType()Ljava/lang/String;
.end method

.method public abstract getSubType()Ljava/lang/String;
.end method

.method public abstract getTransferEncoding()Ljava/lang/String;
.end method
