.class Lcom/narvii/app/NVTabFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/app/NVTabFragment$1;->this$0:Lcom/narvii/app/NVTabFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/app/NVTabFragment$1;->this$0:Lcom/narvii/app/NVTabFragment;

    .line 3
    .line 4
    iget-boolean v0, p1, Lcom/narvii/app/NVTabFragment;->updating:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/narvii/app/NVTabFragment;->setTabIndex(I)V

    .line 10
    :cond_0
    return-void
.end method
