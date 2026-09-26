.class public final synthetic Lcom/narvii/model/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le8/p;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/model/PollOption;

    check-cast p2, Lcom/narvii/model/PollOption;

    invoke-virtual {p1, p2}, Lcom/narvii/model/PollOption;->isSame(Lcom/narvii/model/PollOption;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
