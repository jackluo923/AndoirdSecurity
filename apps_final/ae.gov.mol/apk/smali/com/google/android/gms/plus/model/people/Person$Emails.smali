.class public interface abstract Lcom/google/android/gms/plus/model/people/Person$Emails;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/data/Freezable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/plus/model/people/Person;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Emails"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/plus/model/people/Person$Emails$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/data/Freezable",
        "<",
        "Lcom/google/android/gms/plus/model/people/Person$Emails;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getType()I
.end method

.method public abstract getValue()Ljava/lang/String;
.end method

.method public abstract hasPrimary()Z
.end method

.method public abstract hasType()Z
.end method

.method public abstract hasValue()Z
.end method

.method public abstract isPrimary()Z
.end method
