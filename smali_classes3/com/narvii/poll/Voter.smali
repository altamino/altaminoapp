.class public Lcom/narvii/poll/Voter;
.super Lcom/narvii/model/api/UserListResponse;
.source "Voter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/poll/Voter$VotedValueMapDeserializer;
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/narvii/poll/Voter;


# instance fields
.field public polloptId:Ljava/lang/String;

.field public votedValueMap:Ljava/util/HashMap;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lcom/narvii/poll/Voter$VotedValueMapDeserializer;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Lcom/narvii/poll/Voter;

    invoke-direct {v0}, Lcom/narvii/poll/Voter;-><init>()V

    sput-object v0, Lcom/narvii/poll/Voter;->EMPTY:Lcom/narvii/poll/Voter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/narvii/model/api/UserListResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getVotedSum(Ljava/lang/String;)I
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/narvii/poll/Voter;->votedValueMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_1

    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_2
    :goto_0
    return v1
.end method
