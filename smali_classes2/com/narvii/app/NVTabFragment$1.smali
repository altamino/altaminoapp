.class Lcom/narvii/app/NVTabFragment$1;
.super Ljava/lang/Object;
.source "NVTabFragment.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/app/NVTabFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/app/NVTabFragment;


# direct methods
.method constructor <init>(Lcom/narvii/app/NVTabFragment;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/narvii/app/NVTabFragment$1;->this$0:Lcom/narvii/app/NVTabFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1

    .line 163
    iget-object p1, p0, Lcom/narvii/app/NVTabFragment$1;->this$0:Lcom/narvii/app/NVTabFragment;

    iget-boolean v0, p1, Lcom/narvii/app/NVTabFragment;->updating:Z

    if-nez v0, :cond_0

    .line 164
    invoke-virtual {p1, p2}, Lcom/narvii/app/NVTabFragment;->setTabIndex(I)V

    :cond_0
    return-void
.end method
