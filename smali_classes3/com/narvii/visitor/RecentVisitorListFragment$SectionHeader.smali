.class Lcom/narvii/visitor/RecentVisitorListFragment$SectionHeader;
.super Ljava/lang/Object;
.source "RecentVisitorListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/visitor/RecentVisitorListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SectionHeader"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/visitor/RecentVisitorListFragment;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/narvii/visitor/RecentVisitorListFragment;Ljava/lang/String;)V
    .locals 0

    .line 575
    iput-object p1, p0, Lcom/narvii/visitor/RecentVisitorListFragment$SectionHeader;->this$0:Lcom/narvii/visitor/RecentVisitorListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 576
    iput-object p2, p0, Lcom/narvii/visitor/RecentVisitorListFragment$SectionHeader;->title:Ljava/lang/String;

    return-void
.end method
