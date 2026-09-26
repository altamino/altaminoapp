.class public Lcom/narvii/poll/Voter;
.super Lcom/narvii/model/api/UserListResponse;
.source "SourceFile"


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

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/poll/Voter;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/poll/Voter;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/narvii/poll/Voter;->EMPTY:Lcom/narvii/poll/Voter;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/model/api/UserListResponse;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public getVotedSum(Ljava/lang/String;)I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/poll/Voter;->votedValueMap:Ljava/util/HashMap;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    goto :goto_0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    check-cast p1, Ljava/lang/Integer;

    .line 15
    .line 16
    if-nez p1, :cond_1

    .line 17
    goto :goto_0

    .line 18
    .line 19
    .line 20
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 21
    move-result v1

    .line 22
    :cond_2
    :goto_0
    return v1
.end method
