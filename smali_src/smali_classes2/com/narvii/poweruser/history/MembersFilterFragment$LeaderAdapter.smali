.class Lcom/narvii/poweruser/history/MembersFilterFragment$LeaderAdapter;
.super Lcom/narvii/poweruser/history/MembersFilterFragment$FilterUserAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/poweruser/history/MembersFilterFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LeaderAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/poweruser/history/MembersFilterFragment;


# direct methods
.method constructor <init>(Lcom/narvii/poweruser/history/MembersFilterFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/poweruser/history/MembersFilterFragment$LeaderAdapter;->this$0:Lcom/narvii/poweruser/history/MembersFilterFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/poweruser/history/MembersFilterFragment$FilterUserAdapter;-><init>(Lcom/narvii/poweruser/history/MembersFilterFragment;)V

    .line 6
    return-void
.end method


# virtual methods
.method protected type()Ljava/lang/String;
    .locals 1

    const-string v0, "leaders"

    return-object v0
.end method
