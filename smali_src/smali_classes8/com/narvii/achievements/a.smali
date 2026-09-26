.class public final synthetic Lcom/narvii/achievements/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/text/OnTagClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/achievements/StreakRepairDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/achievements/StreakRepairDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/achievements/a;->a:Lcom/narvii/achievements/StreakRepairDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;Lcom/narvii/util/text/NVText;ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/achievements/a;->a:Lcom/narvii/achievements/StreakRepairDialog;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/narvii/achievements/StreakRepairDialog;->a(Lcom/narvii/achievements/StreakRepairDialog;Landroid/view/View;Lcom/narvii/util/text/NVText;ILjava/lang/String;)V

    return-void
.end method
