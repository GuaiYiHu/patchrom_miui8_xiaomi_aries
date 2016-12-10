.class Lcom/android/server/policy/GlobalActions$8;
.super Lcom/android/server/policy/GlobalActions$SinglePressAction;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions;->getBugReportAction()Lcom/android/server/policy/GlobalActions$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/GlobalActions;
    .param p2, "$anonymous0"    # I
    .param p3, "$anonymous1"    # I

    .prologue
    .line 404
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$8;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-direct {p0, p2, p3}, Lcom/android/server/policy/GlobalActions$SinglePressAction;-><init>(II)V

    .line 405
    return-void
.end method


# virtual methods
.method public getStatus()Ljava/lang/String;
    .locals 4

    .prologue
    .line 450
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$8;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->-get4(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 452
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 453
    sget-object v2, Landroid/os/Build;->ID:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 451
    const v2, 0x1040122

    .line 450
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onPress()V
    .locals 4

    .prologue
    .line 408
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$8;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->-get4(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 409
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x1040120

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 410
    const v2, 0x1040121

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 411
    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 413
    new-instance v2, Lcom/android/server/policy/GlobalActions$8$1;

    invoke-direct {v2, p0}, Lcom/android/server/policy/GlobalActions$8$1;-><init>(Lcom/android/server/policy/GlobalActions$8;)V

    .line 412
    const v3, 0x1040375

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 435
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 436
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 437
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 407
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 445
    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 441
    const/4 v0, 0x1

    return v0
.end method
