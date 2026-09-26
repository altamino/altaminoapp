.class public final Landroidx/compose/ui/text/input/TextInputServiceAndroid$createInputConnection$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/text/input/InputEventCallback2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/text/input/TextInputServiceAndroid;->h(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/ui/text/input/TextInputServiceAndroid;


# direct methods
.method constructor <init>(Landroidx/compose/ui/text/input/TextInputServiceAndroid;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/compose/ui/text/input/TextInputServiceAndroid$createInputConnection$1;->this$0:Landroidx/compose/ui/text/input/TextInputServiceAndroid;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public a(Landroid/view/KeyEvent;)V
    .locals 1
    .param p1    # Landroid/view/KeyEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "event"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/ui/text/input/TextInputServiceAndroid$createInputConnection$1;->this$0:Landroidx/compose/ui/text/input/TextInputServiceAndroid;

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->e(Landroidx/compose/ui/text/input/TextInputServiceAndroid;)Landroid/view/inputmethod/BaseInputConnection;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 15
    return-void
.end method

.method public b(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/text/input/TextInputServiceAndroid$createInputConnection$1;->this$0:Landroidx/compose/ui/text/input/TextInputServiceAndroid;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->g(Landroidx/compose/ui/text/input/TextInputServiceAndroid;)Le8/l;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Landroidx/compose/ui/text/input/ImeAction;->i(I)Landroidx/compose/ui/text/input/ImeAction;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, p1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/text/input/EditCommand;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "editCommands"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/ui/text/input/TextInputServiceAndroid$createInputConnection$1;->this$0:Landroidx/compose/ui/text/input/TextInputServiceAndroid;

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->f(Landroidx/compose/ui/text/input/TextInputServiceAndroid;)Le8/l;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, p1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    return-void
.end method
