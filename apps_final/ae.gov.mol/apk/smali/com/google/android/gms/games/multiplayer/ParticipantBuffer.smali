.class public final Lcom/google/android/gms/games/multiplayer/ParticipantBuffer;
.super Lcom/google/android/gms/common/data/DataBuffer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/data/DataBuffer",
        "<",
        "Lcom/google/android/gms/games/multiplayer/Participant;",
        ">;"
    }
.end annotation


# virtual methods
.method public get(I)Lcom/google/android/gms/games/multiplayer/Participant;
    .locals 2
    .param p1, "position"    # I

    .prologue
    new-instance v0, Lcom/google/android/gms/internal/cf;

    iget-object v1, p0, Lcom/google/android/gms/games/multiplayer/ParticipantBuffer;->N:Lcom/google/android/gms/internal/l;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/cf;-><init>(Lcom/google/android/gms/internal/l;I)V

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/multiplayer/ParticipantBuffer;->get(I)Lcom/google/android/gms/games/multiplayer/Participant;

    move-result-object v0

    return-object v0
.end method