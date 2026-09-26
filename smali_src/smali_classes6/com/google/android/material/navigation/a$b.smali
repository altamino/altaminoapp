.class Lcom/google/android/material/navigation/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/navigation/a;->onSizeChanged(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/navigation/a;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/google/android/material/navigation/a;I)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/material/navigation/a$b;->this$0:Lcom/google/android/material/navigation/a;

    .line 3
    .line 4
    iput p2, p0, Lcom/google/android/material/navigation/a$b;->val$width:I

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/navigation/a$b;->this$0:Lcom/google/android/material/navigation/a;

    .line 3
    .line 4
    iget v1, p0, Lcom/google/android/material/navigation/a$b;->val$width:I

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/google/android/material/navigation/a;->d(Lcom/google/android/material/navigation/a;I)V

    .line 8
    return-void
.end method
