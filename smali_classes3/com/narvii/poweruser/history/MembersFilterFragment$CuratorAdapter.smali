.class Lcom/narvii/poweruser/history/MembersFilterFragment$CuratorAdapter;
.super Lcom/narvii/poweruser/history/MembersFilterFragment$FilterUserAdapter;
.source "MembersFilterFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/poweruser/history/MembersFilterFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CuratorAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/poweruser/history/MembersFilterFragment;


# direct methods
.method constructor <init>(Lcom/narvii/poweruser/history/MembersFilterFragment;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/narvii/poweruser/history/MembersFilterFragment$CuratorAdapter;->this$0:Lcom/narvii/poweruser/history/MembersFilterFragment;

    invoke-direct {p0, p1}, Lcom/narvii/poweruser/history/MembersFilterFragment$FilterUserAdapter;-><init>(Lcom/narvii/poweruser/history/MembersFilterFragment;)V

    return-void
.end method


# virtual methods
.method protected type()Ljava/lang/String;
    .locals 1

    const-string v0, "curators"

    return-object v0
.end method
