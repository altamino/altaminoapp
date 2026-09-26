.class Landroidx/databinding/BaseObservableField$DependencyCallback;
.super Landroidx/databinding/Observable$OnPropertyChangedCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/BaseObservableField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DependencyCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/databinding/BaseObservableField;


# direct methods
.method constructor <init>(Landroidx/databinding/BaseObservableField;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/databinding/BaseObservableField$DependencyCallback;->this$0:Landroidx/databinding/BaseObservableField;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/databinding/Observable$OnPropertyChangedCallback;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public e(Landroidx/databinding/Observable;I)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Landroidx/databinding/BaseObservableField$DependencyCallback;->this$0:Landroidx/databinding/BaseObservableField;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/databinding/BaseObservable;->notifyChange()V

    .line 6
    return-void
.end method
