.class Lcom/narvii/poweruser/SectionSeekBar$2;
.super Ljava/lang/Object;
.source "SectionSeekBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/poweruser/SectionSeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/poweruser/SectionSeekBar;


# direct methods
.method constructor <init>(Lcom/narvii/poweruser/SectionSeekBar;)V
    .locals 0

    .line 389
    iput-object p1, p0, Lcom/narvii/poweruser/SectionSeekBar$2;->this$0:Lcom/narvii/poweruser/SectionSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/narvii/poweruser/SectionSeekBar$2;->this$0:Lcom/narvii/poweruser/SectionSeekBar;

    invoke-static {v0}, Lcom/narvii/poweruser/SectionSeekBar;->access$000(Lcom/narvii/poweruser/SectionSeekBar;)V

    return-void
.end method
