﻿#pragma checksum "..\..\AddDirector.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "88EFC725867E3F1AA8FF667B025948DE2F4E42F9CE6DE63A831C53649C0C1C4E"
//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан программой.
//     Исполняемая версия:4.0.30319.42000
//
//     Изменения в этом файле могут привести к неправильной работе и будут потеряны в случае
//     повторной генерации кода.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;
using Tortiki;


namespace Tortiki {
    
    
    /// <summary>
    /// AddDirector
    /// </summary>
    public partial class AddDirector : System.Windows.Window, System.Windows.Markup.IComponentConnector {
        
        
        #line 37 "..\..\AddDirector.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox Naimenovanie;
        
        #line default
        #line hidden
        
        
        #line 45 "..\..\AddDirector.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox Opisanie;
        
        #line default
        #line hidden
        
        
        #line 53 "..\..\AddDirector.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox Tip;
        
        #line default
        #line hidden
        
        
        #line 61 "..\..\AddDirector.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox Vozrast;
        
        #line default
        #line hidden
        
        
        #line 70 "..\..\AddDirector.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox Kolvo;
        
        #line default
        #line hidden
        
        
        #line 78 "..\..\AddDirector.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox Iznos;
        
        #line default
        #line hidden
        
        
        #line 86 "..\..\AddDirector.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button back;
        
        #line default
        #line hidden
        
        
        #line 95 "..\..\AddDirector.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button AddId;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/Tortiki;component/adddirector.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\AddDirector.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            this.Naimenovanie = ((System.Windows.Controls.TextBox)(target));
            return;
            case 2:
            this.Opisanie = ((System.Windows.Controls.TextBox)(target));
            return;
            case 3:
            this.Tip = ((System.Windows.Controls.TextBox)(target));
            return;
            case 4:
            this.Vozrast = ((System.Windows.Controls.TextBox)(target));
            return;
            case 5:
            this.Kolvo = ((System.Windows.Controls.TextBox)(target));
            return;
            case 6:
            this.Iznos = ((System.Windows.Controls.TextBox)(target));
            return;
            case 7:
            this.back = ((System.Windows.Controls.Button)(target));
            
            #line 90 "..\..\AddDirector.xaml"
            this.back.Click += new System.Windows.RoutedEventHandler(this.RegBack);
            
            #line default
            #line hidden
            return;
            case 8:
            this.AddId = ((System.Windows.Controls.Button)(target));
            
            #line 99 "..\..\AddDirector.xaml"
            this.AddId.Click += new System.Windows.RoutedEventHandler(this.AddId_Click);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}
