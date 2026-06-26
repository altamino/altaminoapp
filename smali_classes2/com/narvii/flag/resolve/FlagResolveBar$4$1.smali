.class Lcom/narvii/flag/resolve/FlagResolveBar$4$1;
.super Ljava/lang/Object;
.source "FlagResolveBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/flag/resolve/FlagResolveBar$4;->call(Lcom/narvii/model/api/ApiResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/flag/resolve/FlagResolveBar$4;


# direct methods
.method constructor <init>(Lcom/narvii/flag/resolve/FlagResolveBar$4;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$4$1;->this$1:Lcom/narvii/flag/resolve/FlagResolveBar$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 248
    iget-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$4$1;->this$1:Lcom/narvii/flag/resolve/FlagResolveBar$4;

    iget-object p1, p1, Lcom/narvii/flag/resolve/FlagResolveBar$4;->this$0:Lcom/narvii/flag/resolve/FlagResolveBar;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/narvii/flag/resolve/FlagResolveBar;->access$500(Lcom/narvii/flag/resolve/FlagResolveBar;ILjava/lang/String;)V

    return-void
.end method
